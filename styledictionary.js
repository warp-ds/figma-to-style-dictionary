const StyleDictionary = require('style-dictionary');
const fs = require('fs');
const path = require('path');

const tokensPath = './tokens'; // Path to your tokens directory

// Read the brand-mode combinations from the directory structure
const brandModes = fs.readdirSync(tokensPath);

brandModes.forEach(brandMode => {
  // Create a Style Dictionary configuration for this brand-mode combination
  const config = {
    source: [path.join(tokensPath, brandMode, '*.json')],
    platforms: {
      scss: {
        transformGroup: 'scss',
        buildPath: `output/${brandMode}/`,
        files: [{
          destination: '_variables.scss',
          format: 'scss/variables'
        }]
      },
      // Add other platforms (iOS, Android, etc.) as needed
    }
  };

  // Run Style Dictionary with this configuration
  const sd = StyleDictionary.extend(config);
  sd.buildAllPlatforms();
});

