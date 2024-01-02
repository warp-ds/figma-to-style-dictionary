// Data
const sourceData = require("./data/figma.json");

// Scripts to transform data
const { processAndWriteBrandColors } = require('./processColors');
const { processAndWriteSemanticAndComponentTokens } = require('./processTokens');

// Prepare the modes array from your source data
const modes = sourceData.meta.variableCollections["VariableCollectionId:4546:841"].modes;

// Process and write brand color files
processAndWriteBrandColors(sourceData, sourceData.meta.variableCollections, sourceData.meta.variables);

// Process and write semantic and component tokens
// processAndWriteSemanticAndComponentTokens(sourceData, sourceData.meta.variables, modes);
