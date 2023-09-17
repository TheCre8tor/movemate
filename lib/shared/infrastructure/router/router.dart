import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movemate/modules/home/screens/home.dart';

class AppRouter {
  const AppRouter._();

  static GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: Home.name,
        redirect: (context, state) {
          return Home.path;
        },
      ),
      // GoRoute(
      //   name: HomePage.name,
      //   path: HomePage.path,
      //   pageBuilder: HomePage.route,
      // ),
    ],
    errorPageBuilder: (_errorRoute),
  );

  static MaterialPage _errorRoute(context, state) {
    return MaterialPage(
      key: state.pageKey,
      child: Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      ),
    );
  }
}
