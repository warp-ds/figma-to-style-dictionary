const StyleDictionary = require("style-dictionary");
const fs = require("fs");
const path = require("path");

// Custom Transform for renaming 'background' to 'bg'
StyleDictionary.registerTransform({
  name: 'name/replaceBg',
  type: 'name',
  matcher: (token) => token.name.includes('background'),
  transformer: (token) => {
    console.log('Transforming background in:', token.name);
    return token.name.replace('background', 'bg');
  }
});

// Custom Transform for removing '-default'
StyleDictionary.registerTransform({
  name: 'name/removeDefault',
  type: 'name',
  matcher: (token) => token.name.endsWith('-default'),
  transformer: (token) => {
    console.log('Removing -default from:', token.name);
    return token.name.replace('-default', '');
  }
});

// Register a custom transform group with specific transforms
StyleDictionary.registerTransformGroup({
  name: 'custom',
  transforms: ['name/replaceBg', 'name/removeDefault', 'attribute/cti', 'name/cti/kebab']
});


const tokensPath = "./tokens";
const brandModes = fs
  .readdirSync(tokensPath)
  .filter((item) => fs.statSync(path.join(tokensPath, item)).isDirectory());

brandModes.forEach((brandMode) => {
  const config = {
    source: [path.join(tokensPath, brandMode, "*.json")],
    platforms: {
      scss: {
        transformGroup: 'custom',
        buildPath: `output/${brandMode}/web/`,
        files: [{
          destination: "_variables.scss",
          format: "scss/variables",
          options: {
            outputReferences: true,
          }
        }]
      },
      css: {
        transformGroup: 'css',
        buildPath: `output/${brandMode}/web/`,
        files: [{
          destination: 'variables.css',
          format: 'css/variables',
          options: {
            outputReferences: true,
          },
        }]
      },
      android: {
        transformGroup: "android",
        buildPath: `output/${brandMode}/android/`,
        files: [
          {
            destination: "colors.xml",
            format: "android/colors",
          },
        ],
      },
      ios: {
        transformGroup: "ios",
        buildPath: `output/${brandMode}/ios/`,
        files: [
          {
            destination: "StyleDictionaryColor.h",
            format: "ios/colors.h",
          },
          {
            destination: "StyleDictionaryColor.m",
            format: "ios/colors.m",
          },
        ],
      }  
    },
  };

  try {
    const sd = StyleDictionary.extend(config);
    sd.buildAllPlatforms();
    console.log(`Successfully built Style Dictionary for ${brandMode}`);
  } catch (error) {
    console.error(`Error building Style Dictionary for ${brandMode}:`, error);
  }
});