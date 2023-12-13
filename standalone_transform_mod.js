const fs = require("fs");
const path = require("path");
const sourceData = require("./data/figma.json");


// Convert RGBA object to hex. Return wity 8 numbers if transparent

function rgbaToHex(r, g, b, a) {
  // Convert each component to a two-digit hexadecimal string
  const toHex = c => Math.round(c * 255).toString(16).padStart(2, '0');

  // Convert RGB to Hex
  let hex = `#${toHex(r)}${toHex(g)}${toHex(b)}`;

  // Append alpha value in hex only if it's not 1
  if (a !== 1) {
    hex += toHex(a);
  }

  return hex;
}

function rgbaToString(rgba) {
  if (
    rgba &&
    rgba.r !== undefined &&
    rgba.g !== undefined &&
    rgba.b !== undefined &&
    rgba.a !== undefined
  ) {
    return rgbaToHex(rgba.r, rgba.g, rgba.b, rgba.a);
  }
  return null;
}

// Resolve alias to actual value
function resolveAlias(variable, modeId, sourceData) {
  let value = variable.valuesByMode[modeId];

  if (value && value.type === "VARIABLE_ALIAS") {
    const aliasedVariable = sourceData.meta.variables[value.id];
    if (aliasedVariable && !aliasedVariable.remote) {
      return resolveAlias(aliasedVariable, modeId, sourceData);
    }
  } else if (value && value.r !== undefined) {
    // Direct RGBA value
    return value;
  }

  return null; // Return null if value is not valid or not found
}

// Function to get colour from token ID
function getColorFromId(id, sourceData) {
  const variable = sourceData.meta.variables[id];
  if (!variable || variable.remote) {
    return null; // Return null if variable is not found or is remote
  }

  if (variable.type === 'VARIABLE_ALIAS') {
    // If the variable is an alias, resolve it recursively
    return getColorFromId(variable.id, sourceData);
  }

  // Assuming the color value is directly stored in the variable
  // Adjust this part based on your actual data structure
  return rgbaToString(variable.valuesByMode); // Convert RGBA object to string
}

let modes; // array with id and name of the modes
const semanticTokens = {};

// Process brand-specific color tokens
// Find the token collection in variableCollections
Object.entries(sourceData.meta.variableCollections).forEach(
  ([collectionId, collection]) => {
    if (collectionId == "VariableCollectionId:4546:841") {
      // save mode names
      modes = collection.modes;

      // Go through each variableId
      collection.variableIds.forEach((variableId) => {
        const variable = sourceData.meta.variables[variableId];

        // console.log("Semantic token: ", variable);

        // Split the token name into list with segments
        // For example [ 'Background', 'Secondary-Hover' ]
        const pathSegments = variable.name.split("/").slice(1);

        // console.log("pathSegments ", pathSegments);

        // Reference to the current position in the semanticTokens object
        let currentLevel = semanticTokens;

        // Iterate over each segment and create nested objects if they don't exist
        pathSegments.forEach((segment, index) => {
          if (index === pathSegments.length - 1) {
            // Prepare an object to hold the processed valuesByMode
            const processedValuesByMode = {};

            // Process each mode in valuesByMode
            Object.entries(variable.valuesByMode).forEach(([modeId, value]) => {
              // Find the corresponding mode name
              const modeEntry = modes.find((m) => m.modeId === modeId);
              const modeName = modeEntry ? modeEntry.name : modeId;

              // Use the id to find the corresponding color
              const color = getColorFromId(value.id, sourceData);

              // Add the mode name and value to processedValuesByMode
              processedValuesByMode[modeName] = value;

              if (color) {
                if (!semanticTokens[variable.name]) {
                  semanticTokens[variable.name] = {};
                }
            
                semanticTokens[variable.name][modeName] = color;
              }

            });

            // console.log("variable");
            // console.log(variable);

            // Store the token details with the processed valuesByMode
            currentLevel[segment] = {
              id: variable.id,
              valuesByMode: processedValuesByMode,
            };
          } else {
            // If it's not the last segment, create an object if it doesn't exist
            currentLevel[segment] = currentLevel[segment] || {};
            currentLevel = currentLevel[segment]; // Move to the next level
          }
        });
      });
    }
  }
);

// Process semantic tokens
const semanticCollection = sourceData.meta.variableCollections["VariableCollectionId:4546:841"];

if (semanticCollection && !semanticCollection.remote) {
  
  semanticCollection.variableIds.forEach((variableId) => {
    const variable = sourceData.meta.variables[variableId];
    if (variable && !variable.remote) {
      semanticCollection.modes.forEach((mode) => {
        const modeName = mode.name;
        const resolvedValue = resolveAlias(variable, mode.modeId, sourceData);

        if (resolvedValue) {
          const valueString = rgbaToString(resolvedValue);
          if (!semanticTokens[modeName]) {
            semanticTokens[modeName] = {};
          }

          semanticTokens[modeName][variable.name] = { value: valueString };
        }
      });
    }
  });
}


// Write semantic tokens
const semanticDir = path.join(__dirname, "tokens/globals");
if (!fs.existsSync(semanticDir)) {
  fs.mkdirSync(semanticDir, { recursive: true });
}
fs.writeFileSync(
  path.join(semanticDir, "semantic.json"),
  JSON.stringify({ Color: { Semantic: semanticTokens } }, null, 2)
);



//// Function to extract primitive BRAND tokens

function processBrands(variableCollections, variables) {
  const brands = {};

  Object.entries(variableCollections).forEach(([collectionId, collection]) => {
    // Process only local variables, and skip semantic tokens
    if (!collection.remote && collectionId !== "VariableCollectionId:4546:841") {
      collection.variableIds.forEach(variableId => {
        const variable = variables[variableId];
        // only color variables
        if (variable && variable.resolvedType === 'COLOR') {
          // Split the color name into segments
          const nameSegments = variable.name.split('/'); // Example ["DBA", "Jean Blue", "100"]

          // Start building the nested structure
          let currentLevel = brands;
          nameSegments.forEach((segment, index) => {
            if (index === nameSegments.length - 1) {
              // Last segment: assign the color value
              currentLevel[segment] = { value: rgbaToString(variable.valuesByMode[collection.defaultModeId]) };
            } else {
              // Intermediate segments: create nested objects
              currentLevel[segment] = currentLevel[segment] || {};
              currentLevel = currentLevel[segment];
            }
          });
        }
      });
    }
  });

  return brands;
}

// Function to write files with primitive colours for each brand 
function writeBrandFiles(brands) {
  // iterate through each brand and write file
  Object.entries(brands).forEach(([brand, colors]) => {
    const brandDir = path.join(__dirname, 'tokens/brands');
    if (!fs.existsSync(brandDir)) {
      fs.mkdirSync(brandDir, { recursive: true });
    }

    // Construct the data with the brand as a key under 'color'
    const brandData = {
      color: {
        [brand]: colors
      }
    };

    fs.writeFileSync(path.join(brandDir, `${brand}.json`), JSON.stringify(brandData, null, 2));
  });
}


// create an object with all primitive brand colours
const brands = processBrands(sourceData.meta.variableCollections, sourceData.meta.variables);
// save to files
writeBrandFiles(brands);

console.log(brands);