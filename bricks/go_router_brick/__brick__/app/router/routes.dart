import 'package:flutter/widgets.dart';
import 'package:{{app_name.snakeCase()}}/{{route.snakeCase()}}/{{route.snakeCase()}}.dart';
{{#auth_guard}}import 'package:{{app_name.snakeCase()}}/login/login.dart';{{/auth_guard}}

enum AppRoutes {
  {{#auth_guard}}login(
    'login',
    'LOGIN',
    LoginPage(),
  ),{{/auth_guard}}
  {{route.lowerCase()}}(
    '{{route.paramCase()}}',
    '{{route.upperCase()}}',
  {{route.pascalCase()}}Page(),
  );

  const AppRoutes(this.routePath, this.routeName, this.routeView);

  final String routePath;
  final String routeName;
  final Widget routeView;

  @override
  String toString() => '$name: [$routePath][$routeName][$routeView]';
}
