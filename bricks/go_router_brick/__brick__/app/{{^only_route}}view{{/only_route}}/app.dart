import 'package:flutter/material.dart';
import 'package:{{app_name.snakeCase()}}/app/app.dart';
{{#auth_guard}}import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';{{/auth_guard}}

{{^auth_guard}}class {{app_name.pascalCase()}} extends StatelessWidget {
  const {{app_name.pascalCase()}}({super.key});

  static final _navigator = AppRouter.router();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: '{{app_name.pascalCase()}}',
      routerDelegate: _navigator.routerDelegate,
      routeInformationParser: _navigator.routeInformationParser,
      routeInformationProvider: _navigator.routeInformationProvider,
    );
  }
}{{/auth_guard}}
{{#auth_guard}}class {{app_name.pascalCase()}} extends StatefulWidget {
  const {{app_name.pascalCase()}}({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late GoRouter _navigator;

  @override
  void initState() {
    _navigator = AppRouter.router(context.read<AuthBloc>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: '{{app_name.pascalCase()}}',
      routerDelegate: _navigator.routerDelegate,
      routeInformationParser: _navigator.routeInformationParser,
      routeInformationProvider: _navigator.routeInformationProvider,
    );
  }
}{{/auth_guard}}
