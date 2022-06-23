# Go Router Brick

A brick to create a simple [go_router](https://pub.dev/packages/go_router) route inside your flutter app.
Additionaly you can generate a simple auth guard, which will generate a login page, and setup some of the go_router values.

## How to use 🚀

```
mason make go_router_brick --only_route true --app_name my_example_project --route home --auth_guard false --equatable false --url_path_strategy true --neglect_route false
```

## Variables ✨

| Variable            | Description                                       | Default            | Type      |
| --------------------| --------------------------------------------------| -------------------| ----------|
| `only_route`        | Create app folder and main file                   | true               | `boolean` |
| `app_name`          | Flutter app name                                  | my_example_project | `string`  |
| `route`             | Route name                                        | Home               | `string`  |
| `auth_guard`        | Use Auth Guard                                    | false              | `boolean` |
| `equatable`         | Use Equatable                                     | false              | `boolean` |
| `url_path_strategy` | Set Url Path Strategy to path instead of hash     | false              | `boolean` |
| `neglect_route`     | Neglect back navigation on browsers               | false              | `boolean` |

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
