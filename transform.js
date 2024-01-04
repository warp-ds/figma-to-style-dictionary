// Data
const sourceData = require("./data/figma.json");

// Collection in Figma with semantic and component tokens
const tokenVariableCollection = "VariableCollectionId:4546:841";

// Scripts to transform data
const { processAndWriteBrandColors } = require('./processColors');
const { processAndWriteSemanticAndComponentTokens } = require('./processTokens');

// Prepare the modes array from your source data
const modes = sourceData.meta.variableCollections[tokenVariableCollection].modes;

// Process and write brand color files
processAndWriteBrandColors(sourceData, sourceData.meta.variableCollections, sourceData.meta.variables, tokenVariableCollection);

// Process and write semantic and component tokens
processAndWriteSemanticAndComponentTokens(sourceData, tokenVariableCollection);

// processAndWriteSemanticAndComponentTokens(sourceData, sourceData.meta.variables, modes, tokenVariableCollection);
