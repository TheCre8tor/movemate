import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movemate/modules/calculate/page/calculate.dart';
import 'package:movemate/modules/dashboard/cubit/dashboard_cubit.dart';

part 'shipment_view.dart';

class Shipment extends StatelessWidget {
  const Shipment({super.key, required this.cubitContext});

  static const name = "Shipment";
  static const path = "/shipment";

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
    return const _ShipmentView();
  }
}
