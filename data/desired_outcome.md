# colors.json

```
{
  "color": {
    "Blue": {
      "100": { "value": "#D2E1F5" },
      "200": { "value": "#A9C4EB" },
      "300": { "value": "#7FA7E1" }
      // ... more shades of blue
    },
    "Gray": {
      "50": { "value": "#FAFAFA" },
      "100": { "value": "#F4F4F5" },
      "200": { "value": "#E1E3E5" }
      // ... more shades of gray
    },
    // ... more color categories
  }
}

```

# semantic.json

```
{
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

# components.json


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

# Style Dictionary Configuration
