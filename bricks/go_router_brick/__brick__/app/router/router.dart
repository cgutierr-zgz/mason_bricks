import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:{{app_name.snakeCase()}}/app/app.dart';
{{#auth_guard}}import 'package:{{app_name.snakeCase()}}/auth/auth.dart';{{/auth_guard}}

abstract class AppRouter {
  static GoRouter router({{#auth_guard}}AuthBloc authBloc{{/auth_guard}}) => GoRouter(
        routes: [
          GoRoute(
                path: AppRoutes.{{route.lowerCase()}}.routePath,
                name: AppRoutes.{{route.lowerCase()}}.routeName,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: AppRoutes.{{route.lowerCase()}}.routeView,
                ),
              ),
          {{#auth_guard}}GoRoute(
                path: AppRoutes.login.routePath,
                name: AppRoutes.login.routeName,
                pageBuilder: (context, state) => MaterialPage(
                  key: state.pageKey,
                  child: AppRoutes.login.routeView,
                ),
              ),{{/auth_guard}}
        ],
      {{#neglect_route}}// Disables history on browser to prevent weird behaviours
      routerNeglect: true,{{/neglect_route}}
      {{#auth_guard}}// Refreshes its current route when the stream receives an event
      refreshListenable: GoRouterRefreshStream(authBloc.stream),
      redirect: (state) {
        // If the user is not logged in, they need to login
        bool? loggedIn = authBloc.state is AuthAuthenticated;
        final loggingIn = state.subloc == AppRoutes.login.routePath;

        // Bundle the location the user is coming from into a query parameter
        final fromp =
            state.subloc == AppRoutes.{{route.lowerCase()}}.routePath ? '' : '?from=${state.subloc}';
        if (!loggedIn) {
          return loggingIn ? null : '${AppRoutes.login.routePath}$fromp';
        }

        // If the user is logged in, send them where they were going before
        // (or home if they weren't going anywhere)
        if (loggingIn) {
          return state.queryParams['from'] ?? AppRoutes.{{route.lowerCase()}}.routePath;
        }

        // No need to redirect at all
        return null;
      },{{/auth_guard}}
      );
}
