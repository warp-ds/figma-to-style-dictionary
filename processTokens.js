const fs = require("fs");
const path = require("path");

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
  

// Process and write semantic and component tokens
function processAndWriteSemanticAndComponentTokens(sourceData, variables, modes) {
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
  
  






// Export the main function for processing tokens
module.exports = {
  processAndWriteSemanticAndComponentTokens
};
