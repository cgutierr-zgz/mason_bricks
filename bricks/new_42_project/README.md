# New 42 Project
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick to create a simple 42 project folder structure with optional Makefile.

## How to use 🚀

```
$ mason make new_42_project --makefile false --project_name fract-ol --description "A simple Fractal Renderer"
```

## Variables ✨

| Variable       | Description                     | Default                   | Type      |
| ---------------| --------------------------------| --------------------------| ----------|
| `project_name` |  Project name                   | fract-ol                  | `string`  |
| `description`  | Project description             | A simple Fractal Renderer | `string`  |
| `makefile`     | Create Makefile for the project | true                      | `boolean` |

## Output Example 📦

```c
└── fract-ol
     ├── includes
     │    └── fract-ol.h
     │
     ├── src
     │    ├── fract-ol.c
     │    └── main.c
     │
     ├── Makefile // optional
	 │
     └── README.md
```

## Roadmap 🗺

- [ ] Generate a custom header based on user input
- [ ] Generate and add libft to makefile compilation and structure
- [ ] Generate and add minilibx to makefile compilation and structure
