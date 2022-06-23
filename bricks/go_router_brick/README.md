# Go Router Brick

A brick to create a simple go_router route inside your flutter app.

## How to use 🚀

```
mason make go_router_brick --app_name my_flutter_app --route home
```

## Variables ✨

| Variable   | Description      | Default            | Type     |
| -----------| -----------------| -------------------| ---------|
| `app_name` | Flutter app name | my_example_project | `string` |
| `route`    | Route name       | Home               | `string` |

## Outputs 📦

```
--app_name my_flutter_app --route home

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
