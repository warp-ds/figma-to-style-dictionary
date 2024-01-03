const StyleDictionary = require('style-dictionary');
const fs = require('fs');
const path = require('path');

const tokensPath = './tokens';
const brandModes = fs.readdirSync(tokensPath).filter(item => fs.statSync(path.join(tokensPath, item)).isDirectory());

brandModes.forEach(brandMode => {
  const config = {
    source: [path.join(tokensPath, brandMode, '*.json')],
    platforms: {
      scss: {
        transformGroup: 'scss',
        buildPath: `output/${brandMode}/`,
        files: [{
          destination: '_variables.scss',
          format: 'scss/variables',
          options: {
            outputReferences: true
          }
        }]
      }
      // ... other platforms
    }
  };

  const sd = StyleDictionary.extend(config);
  sd.buildAllPlatforms();
});
