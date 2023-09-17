import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movemate/modules/calculate/page/calculate.dart';
import 'package:movemate/modules/dashboard/page/dashboard.dart';
import 'package:movemate/modules/home/screens/home.dart';
import 'package:movemate/modules/shipment/page/shipment.dart';

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
      GoRoute(
        path: Calculate.path,
        name: Calculate.name,
        pageBuilder: Calculate.route,
      ),
      GoRoute(
        path: Shipment.path,
        name: Shipment.name,
        pageBuilder: Shipment.route,
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
