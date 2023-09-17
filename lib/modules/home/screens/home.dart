import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'home_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const name = "Home";
  static const path = "/home";

  static MaterialPage route(BuildContext context, GoRouterState state) {
    return MaterialPage(key: state.pageKey, child: const Home());
  }

  @override
  Widget build(BuildContext context) {
    return _HomeView();
  }
}
