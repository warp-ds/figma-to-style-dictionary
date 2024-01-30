const StyleDictionary = require("style-dictionary");
const fs = require("fs");
const path = require("path");

const tokensPath = "./tokens";
const brandModes = fs
  .readdirSync(tokensPath)
  .filter((item) => fs.statSync(path.join(tokensPath, item)).isDirectory());

  StyleDictionary.registerTransform({
    name: 'default/remove',
    type: 'name',
    transitive: true,
    transformer: function(prop) {
      if (prop.original.value.indexOf("default") !== -1) {
        console.log("prop: ", prop.original.value.replace(/\.default}$/g, '}').replace(/\./g, '-'));
      }
      return prop.original.value.replace(/\.default}$/g, '}').replace(/\./g, '-');
      // replace(/\.default$/, '')

    }
  });

brandModes.forEach((brandMode) => {
  const config = {
    source: [path.join(tokensPath, brandMode, "*.json")],
    platforms: {
      scss: {
        transformGroup: 'scss',
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
        // transforms: ['attribute/cti', 'default/remove', 'time/seconds', 'content/icon', 'size/rem', 'color/css'],
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