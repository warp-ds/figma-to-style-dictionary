// Brands and modes to create directories and files for
// const brands = ['FINN', 'Tori', 'DBA']; // Add more brands as needed

const fs = require("fs");
const path = require("path");
const sourceData = require("./data/figma.json");

// Convert RGBA object to hex. Return 8 numbers if alpha/transparency is not 100%
function rgbaToHex(r, g, b, a) {
  const toHex = (c) =>
    Math.round(c * 255)
      .toString(16)
      .padStart(2, "0");

  let hex = `#${toHex(r)}${toHex(g)}${toHex(b)}`;

  if (a !== 1) {
    hex += toHex(a);
  }
  return hex;
}

// Process RGBA if valid
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
// Used when processing semantic and component tokens (not colors I think)
function resolveAlias(variable, modeId, sourceData) {
  if (variable && variable.valuesByMode && typeof variable.valuesByMode === "object") {
    let value = variable.valuesByMode[modeId];

    if (value && value.type === "VARIABLE_ALIAS") {
      const aliasedVariable = sourceData.meta.variables[value.id];
      if (aliasedVariable && !aliasedVariable.remote) {
        console.log("Resolving alias for:", value.id); // Log the alias being resolved
        return resolveAlias(aliasedVariable, modeId, sourceData);
      } else {
        console.log("Aliased variable not found or remote:", value.id); // Log if alias not found or remote
      }
    } else if (value && value.r !== undefined) {
      // Direct RGBA value
      return value;
    } else {
      console.log("Value not valid for modeId:", modeId); // Log if value not valid
    }
  } else {
    console.log("Variable or valuesByMode not defined:", variable ? variable.id : 'undefined'); // Log if variable or valuesByMode not defined
  }

  return null; // Return null if value is not valid or not found
}


// Get name of colour, to construct reference from semantic tokens to brand tokens
// Function to extract brand color name from alias ID
function extractBrandColorName(aliasId) {
  const aliasedVariable = sourceData.meta.variables[aliasId];
  if (aliasedVariable) {
    const nameParts = aliasedVariable.name.split("/");
    if (nameParts.length >= 3) {
      // Format "Brand/Color/Shade"
      return `${nameParts[1]}.${nameParts[2]}`; // Color.Shade
    } else if (nameParts.length === 2) {
      // Format "Brand/Color"
      return nameParts[1]; // Color only
    }
  }
  return "unknown";
}


// Function to get colour from token ID
function getColorFromId(id, sourceData) {
  const variable = sourceData.meta.variables[id];
  if (!variable || variable.remote) {
    return null; // Return null if variable is not found or is remote
  }

  if (variable.type === "VARIABLE_ALIAS") {
    // If the variable is an alias, resolve it recursively
    return getColorFromId(variable.id, sourceData);
  }

  // Assuming the color value is directly stored in the variable
  // Adjust this part based on your actual data structure
  return rgbaToString(variable.valuesByMode); // Convert RGBA object to string
}

// Process and write brand color files
function processAndWriteBrandColors(variableCollections, variables) {
  Object.entries(variableCollections).forEach(([collectionId, collection]) => {
    if (
      !collection.remote &&
      collectionId !== "VariableCollectionId:4546:841"
    ) {
      const brandName = collection.modes[0].name; // Brand name from the first mode
      const brandColors = {};

      collection.variableIds.forEach((variableId) => {
        const variable = variables[variableId];
        if (variable && variable.resolvedType === "COLOR") {
          const colorNameParts = variable.name.split("/");
          const colorValue = variable.valuesByMode[collection.defaultModeId];

          if (colorValue) {
            if (colorNameParts.length === 3) {
              // Color belongs to a group
              const colorCategory = colorNameParts[1];
              const colorShade = colorNameParts[2];

              if (!brandColors[colorCategory]) {
                brandColors[colorCategory] = {};
              }
              brandColors[colorCategory][colorShade] = {
                value: rgbaToString(colorValue),
              };
            } else if (colorNameParts.length === 2) {
              // Color does not belong to a group
              const colorName = colorNameParts[1];
              brandColors[colorName] = { value: rgbaToString(colorValue) };
            }
          }
        }
      });

      if (Object.keys(brandColors).length > 0) {
        // Write the colors.json for each mode (light and dark)
        ["light", "dark"].forEach((mode) => {
          const dirPath = path.join(__dirname, `tokens/${brandName} ${mode}`);
          if (!fs.existsSync(dirPath)) {
            fs.mkdirSync(dirPath, { recursive: true });
          }
          fs.writeFileSync(
            path.join(dirPath, "colors.json"),
            JSON.stringify({ Color: brandColors }, null, 2)
          );
        });
      }
    }
  });
}

// extract brand name from the variable ID
function extractBrandFromId(id) {
  // Example implementation (adjust as needed)
  const variable = sourceData.meta.variables[id];
  if (variable) {
    return variable.name.split("/")[0]; // Assuming the brand is the first segment
  }
  return "unknown";
}

// Process and write semantic and component tokens
function processAndWriteSemanticAndComponentTokens(variables, modes) {
  const allTokens = {};

  Object.entries(variables).forEach(([variableId, variable]) => {
    if (
      variable.variableCollectionId === "VariableCollectionId:4546:841" &&
      variable.resolvedType === "COLOR"
    ) {
      const tokenType = variable.name.startsWith("Components")
        ? "components"
        : "semantic";
      const pathSegments = variable.name.split("/").slice(1);

      console.log("tokenType:", tokenType);
      console.log("pathSegments:",pathSegments);

      modes.forEach((modeEntry) => {
        const modeName = modeEntry.name; // e.g., "FINN light"
        const brandName = modeName.split(" ")[0]; // e.g., "FINN"

        console.log("modeName:", modeName);
        // console.log("brandName:",brandName);  

        allTokens[brandName] = allTokens[brandName] || {};
        allTokens[brandName][tokenType] = allTokens[brandName][tokenType] || {};

        let currentLevel = allTokens[brandName][tokenType];

        // console.log("currentLevel:",currentLevel);  

        pathSegments.forEach((segment, index) => {
          if (index === pathSegments.length - 1) {
            const processedValuesByMode = {};

            Object.entries(variable.valuesByMode).forEach(([modeId, value]) => {
              if (value.type === "VARIABLE_ALIAS") {
                const aliasedVariable = sourceData.meta.variables[value.id];
                if (aliasedVariable && !aliasedVariable.remote) {
                  const resolvedValue = resolveAlias(aliasedVariable, modeId, sourceData);

                  console.log("resolvedValue:",resolvedValue);  

                  if (resolvedValue) {
                    const brandColorName = extractBrandColorName(value.id); // Extract brand color name
                    processedValuesByMode[modeId] = { value: `color.${brand}.${brandColorName}.value` };
                  }
                }
              }
            });

            currentLevel[segment] = { valuesByMode: processedValuesByMode };
          } else {
            currentLevel[segment] = currentLevel[segment] || {};
            currentLevel = currentLevel[segment];
          }
        });
      });
    }
  });

  // Write semantic and component tokens for each brand and mode
  Object.entries(allTokens).forEach(([brand, tokens]) => {
    modes.forEach((modeEntry) => {
      const modeName = modeEntry.name.split(" ")[1]; // Extract mode name (light/dark)

      const dirPath = path.join(__dirname, `tokens/${brand} ${modeName}`);
      if (!fs.existsSync(dirPath)) {
        fs.mkdirSync(dirPath, { recursive: true });
      }
      fs.writeFileSync(
        path.join(dirPath, "semantic.json"),
        JSON.stringify({ semantic: tokens.semantic }, null, 2)
      );
      fs.writeFileSync(
        path.join(dirPath, "components.json"),
        JSON.stringify({ components: tokens.components }, null, 2)
      );
    });
  });
}

// Process and write brand color files
processAndWriteBrandColors(
  sourceData.meta.variableCollections,
  sourceData.meta.variables
);

// Process and write semantic and component tokens

// Prepare the modes array from your source data
const modes =
  sourceData.meta.variableCollections["VariableCollectionId:4546:841"].modes;

// Process and write semantic and component tokens
processAndWriteSemanticAndComponentTokens(sourceData.meta.variables, modes);
