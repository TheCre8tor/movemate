import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:movemate/modules/calculate/page/calculate.dart';
import 'package:movemate/modules/dashboard/cubit/dashboard_cubit.dart';
import 'package:movemate/modules/home/screens/home.dart';
import 'package:movemate/modules/shipment/page/shipment.dart';
import 'package:movemate/shared/core/constants/app_icons.dart';

part 'dashboard_view.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  static const name = "Home";
  static const path = "/";

  static MaterialPage route(BuildContext context, GoRouterState state) {
    return MaterialPage(key: state.pageKey, child: const Dashboard());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DashboardCubit(),
      child: const _Dashboard(),
    );
  }
}
