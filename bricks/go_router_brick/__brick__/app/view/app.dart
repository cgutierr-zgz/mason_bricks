import 'package:flutter/material.dart';
import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/app/app.dart';
{{#auth_guard}}import 'package:go_router/go_router.dart';{{/auth_guard}}

{{^auth_guard}}
class {{#pascalCase}}{{app_name}}{{/pascalCase}} extends StatelessWidget {
  const {{#pascalCase}}{{app_name}}{{/pascalCase}}({super.key});

  static final _navigator = AppRouter.router();

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
{{/auth_guard}}

class {{#pascalCase}}{{app_name}}{{/pascalCase}} extends StatefulWidget {
  const {{#pascalCase}}{{app_name}}{{/pascalCase}}({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late GoRouter _navigator;

  @override
  void initState() {
    // TODO: Provide auth Bloc before
    _navigator = AppRouter.router(context.read<AuthBloc>());
    super.initState();
  }

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

