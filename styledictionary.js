const StyleDictionary = require("style-dictionary");
const fs = require("fs");
const path = require("path");

const tokensPath = "./tokens";
const brandModes = fs
  .readdirSync(tokensPath)
  .filter((item) => fs.statSync(path.join(tokensPath, item)).isDirectory());

brandModes.forEach((brandMode) => {
  const config = {
    source: [path.join(tokensPath, brandMode, "*.json")],
    platforms: {
      scss: {
        transformGroup: "scss",
        buildPath: `output/web/${brandMode}/`,
        files: [
          {
            destination: "_variables.scss",
            format: "scss/variables",
            options: {
              outputReferences: true,
            },
          },
        ],
      },
      css: {
        transformGroup: "css",
        buildPath: `output/web/${brandMode}/`,
        files: [
          {
            destination: "variables.css",
            format: "css/variables",
            options: {
              outputReferences: true,
            },
          },
        ],
      },
      compose: {
        transformGroup: "compose",
        buildPath: `output/android/${brandMode}/`,
        files: [
          {
            destination: "StyleDictionaryColor.kt",
            format: "compose/object",
            className: "WarpColors",
            packageName: "com.schibsted.nmp.warp.theme",
          },
        ],
      },
      ios: {
        transformGroup: "ios-swift",
        buildPath: `output/ios/${brandMode}/`,
        files: [
          {
            destination: "StyleDictionary+Class.swift",
            format: "ios-swift/class.swift",
            className: "StyleDictionaryClass",
            filter: {},
          },
          {
            destination: "StyleDictionary+Enum.swift",
            format: "ios-swift/enum.swift",
            className: "StyleDictionaryEnum",
            filter: {},
          },
          {
            destination: `Warp${brandMode.replace(' ', '')}Color.swift`,
            format: "ios-swift/enum.swift",
            className: `Warp${brandMode.replace(' ', '')}Color`,
            options: {
              imports: "SwiftUI",
              objectType: "struct",
              accessControl: "",
            },
          },
        ],
      },
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
