const fs = require("fs");

const path = require("path");

const sourceData = require("./data/figma.json");

// Helper function to convert RGBA object to CSS color string
function rgbaToString(rgba) {
  if (
    rgba &&
    rgba.r !== undefined &&
    rgba.g !== undefined &&
    rgba.b !== undefined &&
    rgba.a !== undefined
  ) {
    return `rgba(${rgba.r * 255}, ${rgba.g * 255}, ${rgba.b * 255}, ${rgba.a})`;
  }
  // If rgba is not valid
  return rgba;
  return null;
}

// Helper function to resolve alias to actual value
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

      // Go through each variable
      collection.variableIds.forEach((variableId) => {
        const variable = sourceData.meta.variables[variableId];

        // console.log("variableID for semantic token", variable);

        // Split the token name into segments
        const pathSegments = variable.name.split("/").slice(1);

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
const semanticCollection =
  sourceData.meta.variableCollections["VariableCollectionId:4546:841"];

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



//// BRANDS primitive tokens

function processBrands(variableCollections, variables) {
  const brands = {};

  Object.entries(variableCollections).forEach(([collectionId, collection]) => {
    if (!collection.remote && collectionId !== "VariableCollectionId:4546:841") {
      collection.variableIds.forEach(variableId => {
        const variable = variables[variableId];
        if (variable && variable.resolvedType === 'COLOR') {
          // Split the color name into segments
          const nameSegments = variable.name.split('/'); // ["DBA", "Jean Blue", "100"]

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



function writeBrandFiles(brands) {
  Object.entries(brands).forEach(([brand, colors]) => {
    const brandDir = path.join(__dirname, 'tokens/brands');
    if (!fs.existsSync(brandDir)) {
      fs.mkdirSync(brandDir, { recursive: true });
    }
    fs.writeFileSync(path.join(brandDir, `${brand}.json`), JSON.stringify({ color: { brand: colors } }, null, 2));
  });
}

const brands = processBrands(sourceData.meta.variableCollections, sourceData.meta.variables);
writeBrandFiles(brands);