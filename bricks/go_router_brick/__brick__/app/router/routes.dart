import 'package:flutter/widgets.dart';

enum AppRoutes {
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
