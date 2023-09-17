part of 'dashboard_cubit.dart';

enum HomeTab { home, calculate, shipment, profile, dashboard }

class DashboardState extends Equatable {
  const DashboardState({this.tab = HomeTab.home});

  final HomeTab tab;

  DashboardState copyWith({HomeTab? tab}) {
    return DashboardState(tab: tab ?? this.tab);
  }

  @override
  List<Object> get props => [tab];
}
