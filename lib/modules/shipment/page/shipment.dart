import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movemate/modules/calculate/page/calculate.dart';
import 'package:movemate/modules/dashboard/cubit/dashboard_cubit.dart';
import 'package:movemate/modules/dashboard/page/dashboard.dart';
import 'package:movemate/modules/home/screens/home.dart';

part 'shipment_view.dart';

class Shipment extends StatelessWidget {
  const Shipment({super.key, required this.cubitContext});

  static const name = "Shipment";
  static const path = "/shipment";

  static MaterialPage route(BuildContext context, GoRouterState state) {
    final cubitContext = state.extra! as DashboardCubit;

    print("Has Cubit: ${cubitContext}");

    return MaterialPage(
      key: state.pageKey,
      child: Shipment(cubitContext: cubitContext),
    );
  }

  final DashboardCubit cubitContext;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubitContext,
      child: const _ShipmentView(),
    );
  }
}
