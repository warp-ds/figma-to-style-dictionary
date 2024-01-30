const fs = require("fs");
const path = require("path");

// Go through all component and semantic tokens in all modes
function processAndWriteSemanticAndComponentTokens(sourceData, tokenVariableCollection) {
  // Extract modes and variables from sourceData
  // Example: "FINN Light" and "FINN dark"
  const modes =
    sourceData.meta.variableCollections[tokenVariableCollection].modes;
  const variables = sourceData.meta.variables;

  // Initialize objects for each mode
  const modeObjects = modes.reduce((acc, mode) => {
    acc[mode.name] = { modeId: mode.modeId, semantic: {}, components: {} };
    return acc;
  }, {});

  // Process tokens for each mode
  // Only use the VariableCollection that contains component and semantic tokens
  sourceData.meta.variableCollections[
    tokenVariableCollection
  ].variableIds.forEach((variableId) => {
    // get the data for the specific component or semantic token
    const variable = variables[variableId];
    if (variable && variable.resolvedType === "COLOR") {
      const tokenType = variable.name.startsWith("Components")
        ? "components"
        : "semantic";
      Object.values(modeObjects).forEach((modeObject) => {
        // Get the name of the token the variable refers to, for example "DBA/Gray/200" or "Semantic/Background/Disabled"
        const value = extractValueForMode(
          variable,
          modeObject.modeId,
          sourceData
        );
       
        // The path to the current semantic or component token
        const pathSegments = variable.name.split("/").slice(1).map(segment => segment.toLowerCase()); // Convert segments to lowercase

        let currentLevel = modeObject[tokenType];

        pathSegments.forEach((segment, index) => {
          if (index === pathSegments.length - 1) {
            currentLevel[segment] = { value };
          } else {
            currentLevel[segment] = currentLevel[segment] || {};
            currentLevel = currentLevel[segment];
          }
        });
      });
    }
  });

  // Write the files for each mode
  Object.entries(modeObjects).forEach(([modeName, modeObject]) => {
    const dirPath = path.join(__dirname, `tokens/${modeName}`);
    if (!fs.existsSync(dirPath)) {
      fs.mkdirSync(dirPath, { recursive: true });
    }
    fs.writeFileSync(
      path.join(dirPath, "semantic.json"),
      JSON.stringify({ w: { s: { color: modeObject.semantic }}}, null, 2)
    );
    fs.writeFileSync(
      path.join(dirPath, "components.json"),
      JSON.stringify({ w: { color: modeObject.components }}, null, 2)
    );
  });
}

// Get the value name for a given component or semantic token and mode (eg FINN Light)
function extractValueForMode(variable, modeId, sourceData) {
  // Find the ID
  const variableID = variable.valuesByMode[modeId].id;
  
  // Get the name
  const variableName = getVariableNameById(variableID, sourceData);

  // Determine if the variable is a semantic token or not
  let formattedName;
  if (variableName.startsWith("Semantic")) {
    const nameParts = variableName.split("/");
//    formattedName = `w.s.color.${nameParts.slice(1).join(".").toLowerCase().replace(/\.default$/, '')}`;
    formattedName = `w.s.color.${nameParts.slice(1).join(".").toLowerCase()}`;
  } else {
    // For non-semantic tokens, replace the first segment with "Color"
    let nameParts = variableName.split("/");
    if (nameParts[0] === 'Components') {
      nameParts[0] = "color";
    }  else {
      nameParts = nameParts.slice(1);
    }
    formattedName = `w.${nameParts.join(".").toLowerCase()}`;
  }

  // Wrap with curly braces
  return `{${formattedName}}`;
}


// Get the name of the variable referred to, bet it a Primitive value, semantic or component token
function getVariableNameById(variableId, sourceData) {
  return sourceData?.meta?.variables?.[variableId]?.name ?? "Unknown Variable";
}

module.exports = {
  processAndWriteSemanticAndComponentTokens,
};
