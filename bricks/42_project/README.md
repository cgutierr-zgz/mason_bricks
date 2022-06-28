# Go Router Brick
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick to create a simple 42 project folder structure with or without Makefile.


## Prerequisites ❗️
TODO

## Optional prerequisites ❓
TODO

// TODO: After generation: Add header 42 user etc

## How to use 🚀

```
mason make 42_project --makefile true --name fract-ol
```

## Variables ✨

| Variable       | Description                     | Default                   | Type      |
| ---------------| --------------------------------| --------------------------| ----------|
| `project_name` |  Project name                   | fract-ol                  | `string`  |
| `description`  | Project description             | A simple Fractal Renderer | `string`  |
| `makefile`     | Create Makefile for the project | true                      | `boolean` |

## Output Example 📦

```dart
// There's a ton of different combinations

├── app
│    ├── router
│    │    ├── router.dart
│    │    └── routes.dart
│    ├── view
│    │    └── app.dart
│    └── app.dart
└── home
    ├── view
    │    └── home_page.dart
    └── home.dart
```
