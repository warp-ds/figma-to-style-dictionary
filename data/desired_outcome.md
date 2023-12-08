// Brand-specific Color Tokens
// finn.json and tori.json inside a brands directory:

{
  "color": {
    "brand": {
      "finn": {
        "blue-200": { "value": "#222222" },
        "blue-800": { "value": "#111111" }
        // ... other FINN colors
      }
    }
  }
}

// Semantic tokens
// One json file, for example tokens/globals/semantic.json:

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


// Style Dictionary Configuration
{
  "source": [
    "tokens/brands/*.json",
    "tokens/globals/*.json"
  ],
  // ... other configuration settings
}
