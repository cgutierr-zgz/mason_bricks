import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/app/app.dart';

abstract class AppRouter {
  // TODO: Add AuthBloc guard condition
  static GoRouter router() => GoRouter(
        routes: [
          GoRoute(
                path: AppRoutes.{{#lowerCase}}{{route}}{{/lowerCase}}.routePath,
                name: AppRoutes.{{#lowerCase}}{{route}}{{/lowerCase}}.routeName,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: AppRoutes.{{#lowerCase}}{{route}}{{/lowerCase}}.routeView,
                ),
              ),
        ],
      );
}
