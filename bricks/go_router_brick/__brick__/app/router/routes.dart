import 'package:flutter/widgets.dart';
import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/{{#snakeCase}}{{route}}{{/snakeCase}}/{{#snakeCase}}{{route}}{{/snakeCase}}.dart';
{{#auth_guard}}import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/login/login.dart';{{/auth_guard}}

enum AppRoutes {
  {{#auth_guard}}login(
    'login',
    'LOGIN',
    LoginPage(),
  ),{{/auth_guard}}
  {{#lowerCase}}{{route}}{{/lowerCase}}(
    '{{#paramCase}}{{route}}{{/paramCase}}',
    '{{#upperCase}}{{route}}{{/upperCase}}',
    {{#pascalCase}}{{route}}{{/pascalCase}}Page(),
  );

  const AppRoutes(this.routePath, this.routeName, this.routeView);

  final String routePath;
  final String routeName;
  final Widget routeView;

  @override
  String toString() => '$name: [$routePath][$routeName][$routeView]';
}
