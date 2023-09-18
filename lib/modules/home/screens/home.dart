import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movemate/modules/calculate/page/calculate.dart';
import 'package:movemate/modules/dashboard/page/dashboard.dart';
import 'package:movemate/shared/core/constants/app_icons.dart';
import 'package:movemate/shared/core/constants/app_png.dart';

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
    return const _HomeView();
  }
}
