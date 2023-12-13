# Brand-specific Color Tokens

finn.json and tori.json inside a brands directory:

```
"color": {
    "finn": {
      "Gray": {
        "50": {
          "value": "#fafafa"
      }
    }
  }
}
```

# Semantic tokens

One json file, for example tokens/globals/semantic.json:

```
{
  "color": {
    "semantic": {
      "background": {
        "primary": {
          "FINN light": { "value": "{color.brand.finn.blue-200.value}" },
          "FINN dark": { "value": "{color.brand.finn.blue-800.value}" },
          "Tori light": { "value": "{color.brand.tori.gray-100.value}" }
        }
        // ... other semantic tokens
      }
    }
  }
}
```

```
  "Color": {
    "Semantic": {
      "Text": {
        "Default": {
          "id": "VariableID:4546:842",
          "valuesByMode": {
            "FINN light": {
              "value": "color.brand.finn.blue-200.value",
              "hex": "#222222",
              "id": "VariableID:3325:4181"
            },
            "FINN dark": {
              "value": "color.brand.finn.blue-800.value",
              "hex": "#222222",
              "id": "VariableID:3325:4172"
            },
            "Tori light": {
              "value": "color.brand.tori.gray-100.value",
              "hex": "#222222",
              "id": "VariableID:4671:16527"
            }
          }
```

# Style Dictionary Configuration

```
{
  "source": [
    "tokens/brands/*.json",
    "tokens/globals/*.json"
  ],
  // ... other configuration settings
}
```
