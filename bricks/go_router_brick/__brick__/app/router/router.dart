import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/app/app.dart';
{{#auth_guard}}import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/auth/auth.dart';{{/auth_guard}}

abstract class AppRouter {
  static GoRouter router({{#auth_guard}}AuthBloc authBloc{{/auth_guard}}) => GoRouter(
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
      {{#neglect_route}}// Disables history on browser to prevent weird behaviours
      routerNeglect: true,{{/neglect_route}}
      {{#auth_guard}}// Refreshes its current route when the stream receives an event
      refreshListenable: GoRouterRefreshStream(authBloc.stream),
      redirect: (state) {
        // If the user is not logged in, they need to login
        bool? loggedIn = authBloc.state is AuthAuthenticated;
        final loggingIn = state.subloc == AppRoutes.login.path;

        // Bundle the location the user is coming from into a query parameter
        final fromp =
            state.subloc == AppRoutes.{{#lowerCase}}{{route}}{{/lowerCase}}.routePath ? '' : '?from=${state.subloc}';
        if (!loggedIn) {
          return loggingIn ? null : '${AppRoutes.login.path}$fromp';
        }

        // If the user is logged in, send them where they were going before
        // (or home if they weren't going anywhere)
        if (loggingIn) {
          return state.queryParams['from'] ?? AppRoutes.{{#lowerCase}}{{route}}{{/lowerCase}}.routePath;
        }

        // No need to redirect at all
        return null;
      },{{/auth_guard}}
      );
}
