# Readme

This is a project to test:
1. Export colour variables/tokens from Figma using Figma's API
2. Use style dictionary to convert those tokens to SCSS, Android and iOS

Inspiration:
https://jamesiv.es/blog/frontend/design/2023/08/01/syncing-figma-variables-with-github-actions-and-styledictionary

Data:
- **data/figma.json**: the json you get from the Figma API
- **data/figma_extract.json**: is small selection from the full file, to see the structure of the json you get from the Figma API
- **tokens/**: transformed data, ready for Style Dictionary
- **build/**: files produced by Style Dictionary

Scripts:
- **transform.js**: script to transform data from Figma to something Style Dictionary can understand. Can run locally without any build process



# How to run locally

## Install packages
`npm install`

## Download data from Figma:
```
curl -H 'X-FIGMA-TOKEN: <personal access token>' 'https://api.figma.com/v1/files/oHBCzDdJxHQ6fmFLYWUltf/variables/local' -o data/figma.json
```

## Run the script to transform the data
```
node transform.js
```

The output files are placed in the `tokens` directory.

## To build to different platforms using style dictionary
```
npm run build-tokens
```
