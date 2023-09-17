import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movemate/modules/dashboard/cubit/dashboard_cubit.dart';
import 'package:movemate/modules/dashboard/screens/dashboard.dart';
import 'package:movemate/modules/home/screens/home.dart';
import 'package:movemate/shared/core/constants/app_icons.dart';

part 'calculate_view.dart';

class Calculate extends StatelessWidget {
  const Calculate({super.key, required this.cubitContext});

  static const name = "Calculate";
  static const path = "/calculate";

  static MaterialPage route(BuildContext context, GoRouterState state) {
    final cubitContext = state.extra! as DashboardCubit;

    return MaterialPage(
      key: state.pageKey,
      child: Calculate(cubitContext: cubitContext),
    );
  }

  final DashboardCubit cubitContext;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubitContext,
      child: const _CalculateView(),
    );
  }
}
