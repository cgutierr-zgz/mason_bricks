import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/app/app.dart';

class {{#pascalCase}}{{app_name}}{{/pascalCase}} extends StatelessWidget {
  const {{#pascalCase}}{{app_name}}{{/pascalCase}}({super.key});

  final _navigator = AppRouter.router();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: '{{#pascalCase}}{{app_name}}{{/pascalCase}}',
      routerDelegate: _navigator.routerDelegate,
      routeInformationParser: _navigator.routeInformationParser,
      routeInformationProvider: _navigator.routeInformationProvider,
    );
  }
}
