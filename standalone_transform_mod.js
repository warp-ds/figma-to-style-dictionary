const fs = require('fs');

const path = require('path');

const sourceData = require("./data/figma.json");

// Helper function to convert RGBA object to CSS color string
function rgbaToString(rgba) {
  if (rgba && rgba.r !== undefined && rgba.g !== undefined && rgba.b !== undefined && rgba.a !== undefined) {
    return `rgba(${rgba.r * 255}, ${rgba.g * 255}, ${rgba.b * 255}, ${rgba.a})`;
  }
  return null; // Return null if rgba is not valid
}

// Helper function to resolve alias to actual value
function resolveAlias(variable, modeId, sourceData) {
  let value = variable.valuesByMode[modeId];

  if (value && value.type === 'VARIABLE_ALIAS') {
    const aliasedVariable = sourceData.meta.variables[value.id];
    if (aliasedVariable && !aliasedVariable.remote) {
      return resolveAlias(aliasedVariable, modeId, sourceData);
    }
  }

  return value;
}

const brands = {};
const semanticTokens = {};

// Process brand-specific color tokens
Object.entries(sourceData.meta.variableCollections).forEach(([collectionId, collection]) => {
  if (collectionId !== "VariableCollectionId:4546:841" && !collection.remote) {
    collection.variableIds.forEach(variableId => {
      const variable = sourceData.meta.variables[variableId];
      if (variable && !variable.remote) {
        const brand = collection.name.split(' ')[0]; // Assuming brand is the first word in collection name
        const colorName = variable.name.split('/')[1]; // Assuming color name is after the first '/'

        if (!brands[brand]) {
          brands[brand] = {};
        }

        brands[brand][colorName] = { value: rgbaToString(variable.valuesByMode[collection.defaultModeId]) };
      }
    });
  }
});

// Process semantic tokens
const semanticCollection = sourceData.meta.variableCollections["VariableCollectionId:4546:841"];
if (semanticCollection && !semanticCollection.remote) {
  semanticCollection.variableIds.forEach(variableId => {
    const variable = sourceData.meta.variables[variableId];
    if (variable && !variable.remote) {
      semanticCollection.modes.forEach(mode => {
        const modeName = mode.name; // Use mode name as key
        const value = resolveAlias(variable, mode.modeId, sourceData);

        if (!semanticTokens[modeName]) {
          semanticTokens[modeName] = {};
        }

        semanticTokens[modeName][variable.name] = { value: rgbaToString(value) };
      });
    }
  });
}

// Write brand-specific color tokens
Object.entries(brands).forEach(([brand, tokens]) => {
  const brandDir = path.join(__dirname, 'tokens/brands');
  if (!fs.existsSync(brandDir)) {
    fs.mkdirSync(brandDir, { recursive: true });
  }
  fs.writeFileSync(path.join(brandDir, `${brand}.json`), JSON.stringify({ color: { brand: tokens } }, null, 2));
});

// Write semantic tokens
const semanticDir = path.join(__dirname, 'tokens/globals');
if (!fs.existsSync(semanticDir)) {
  fs.mkdirSync(semanticDir, { recursive: true });
}
fs.writeFileSync(path.join(semanticDir, 'semantic.json'), JSON.stringify({ color: { semantic: semanticTokens } }, null, 2));
