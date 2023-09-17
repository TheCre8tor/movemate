import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movemate/modules/dashboard/screens/dashboard.dart';
import 'package:movemate/modules/home/screens/home.dart';

class AppRouter {
  const AppRouter._();

  static GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const Dashboard(),
      ),
      GoRoute(
        path: Home.path,
        name: Home.name,
        pageBuilder: Home.route,
      ),
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
