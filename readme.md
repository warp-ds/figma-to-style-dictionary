# Readme

Process description:
https://docs.google.com/document/d/1TrJFBNgYcSjbss6lii5YFB0xCOSPOg7xAguXAa2quw0/edit

Inspiration:
https://jamesiv.es/blog/frontend/design/2023/08/01/syncing-figma-variables-with-github-actions-and-styledictionary

- *data/figma.json* the json you get from the Figma API
- *data/figma_extract.json* is just a manual extraction of content to see the structure of the json you get from the Figma API
- *transform.js* is adjusted to run locally without any build process
- output is saved to 'tokens' directory.


# Install packages
`npm install`

# How to use

Download the data in Terminal, from the data folder:
```
curl -H 'X-FIGMA-TOKEN: figd_2xpuZLg2o28wxKJopGEWxOJuvw44mkbtvGL4TdmK' 'https://api.figma.com/v1/files/oHBCzDdJxHQ6fmFLYWUltf/variables/local' -o figma.json
```

To run the script to transform the data
```
node standalone_transform_mod.js
```

The output files are placed in the `tokens` directory.