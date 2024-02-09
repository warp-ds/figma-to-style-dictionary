# Readme

This repo imports colour variables/tokens from Figma using Figma's API, and uses Style Dictionary to transform those tokens to CSS, Android and iOS. Inspired by [this blogpost](https://jamesiv.es/blog/frontend/design/2023/08/01/syncing-figma-variables-with-github-actions-and-styledictionary).


## Data

- **/data/figma.json** is the raw data we get from the Figma API
- **/data/figma_extract.json** contains a small selection of the above file, to more easily see the structure of the json you get from the Figma API
- **/tokens/** contains the cleaned up data sorted into brands and modes, ready for Style Dictionary
- **/output/** contains the the files produced by Style Dictionary for web, iOS and Android

## Scripts

- **transform.js**: script to transform data from Figma to something Style Dictionary can understand. Can run locally without any build process
- **processColors.js**: called by transform.js to build the primitive colour files
- **processTokens.js**: called by transform.js to build the semantic tokens and component tokens colour files
- **styleDictionary.js**: script to build files for web, iOS and Android


# How to run locally

## Install packages
`pnpm install`

## Download data from Figma:

You need the Figma Project ID and a Figma personal access token. Visit your [account settings](https://www.figma.com/settings) in Figma and click the "Personal Access Tokens" tab. From here, click "Create a new personal access token".

Run the following from the terminal:

`pnpm run import`

The data is saved in `data/figma.json`.

## Transform the data to something Style Dictionary can understand

```
node transform.js
```

The output files are placed in the `tokens` directory.

## Run the script for Style Dictionary to build to different platforms
```
node styledictionary.js
```

The output files are placed in the `output` directory.

# About the data

## The structure of the data from Figma

Figma organises variables and tokens in *collections*. In order to correctly parse the data it is necessary to identify the main collection, where all the component and semantic tokens are placed. For the current Figma file this collection is `"VariableCollectionId:4546:841"`. The variables from this collection are placed in `semantic.json` and `components.json`. The other collections contain primitive colour variables, and are placed in corresponding `colors.json` files. See structure below.


## colors.json

```
{
  "color": {
    "blue": {
      "100": { "value": "#D2E1F5" },
      "200": { "value": "#A9C4EB" },
      "300": { "value": "#7FA7E1" }
      // ... more shades of blue
    },
    "gray": {
      "50": { "value": "#FAFAFA" },
      "100": { "value": "#F4F4F5" },
      "200": { "value": "#E1E3E5" }
      // ... more shades of gray
    },
    // ... more color categories
  }
}
```

## semantic.json

```
{
  "color": {
    "text": {
      "primary": { "value": "{color.blue.300.value}" },
      "secondary": { "value": "{color.gray.200.value}" },
      "disabled": { "value": "{color.gray.100.value}" }
    },
    "background": {
      "default": { "value": "{color.gray.100.value}" },
      "inverse": { "value": "{color.blue.300.value}" }
    },
    // ... more semantic tokens
  }
}
```

## components.json

Note that component tokens can refer either semantic tokens or primitive colours, as in the example below. 

```
 {
  "color": {
    "button": {
      "background": {
        "default": { "value": "{color.text.primary.value}" },
        "hover": { "value": "{color.blue.200.value}" },
        "disabled": { "value": "{color.text.disabled.value}" }
      },
      "text": {
        "default": { "value": "{color.background.default.value}" },
        "hover": { "value": "{color.background.inverse.value}" }
      }
    },
    "link": {
      "default": { "value": "{color.text.primary.value}" },
      "hover": { "value": "{color.blue.200.value}" }
    },
    // ... more component tokens
  }
}
```
