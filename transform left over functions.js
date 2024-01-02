// this is the code that was left when moving the used code to processColors.js and processTokens.js

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


// extract brand name from the variable ID
function extractBrandFromId(id) {
  // Example implementation (adjust as needed)
  const variable = sourceData.meta.variables[id];
  if (variable) {
    return variable.name.split("/")[0]; // Assuming the brand is the first segment
  }
  return "unknown";
}
