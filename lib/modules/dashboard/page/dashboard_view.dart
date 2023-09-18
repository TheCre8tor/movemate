part of 'dashboard.dart';

class _Dashboard extends StatelessWidget {
  const _Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Home(),
      bottomSheet: AppBottomBar(),
    );
  }
}

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.select(
      (DashboardCubit cubit) => cubit.state.tab,
    );

    return BottomAppBar(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        padding: const EdgeInsets.only(
          top: 17.5,
          right: 30.5,
          left: 30.5,
        ),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomeButton(
              selectedTab: selectedTab,
              tab: HomeTab.home,
              pageName: Home.name,
              currentIndex: 0,
              icon: selectedTab == HomeTab.home
                  ? AppIcons.home(isFilled: true)
                  : AppIcons.home(),
            ),
            HomeButton(
              selectedTab: selectedTab,
              tab: HomeTab.calculate,
              pageName: Calculate.name,
              currentIndex: 1,
              icon: selectedTab == HomeTab.calculate
                  ? AppIcons.calculator(isFilled: true)
                  : AppIcons.calculator(),
            ),
            HomeButton(
              selectedTab: selectedTab,
              tab: HomeTab.shipment,
              pageName: Shipment.name,
              currentIndex: 2,
              icon: selectedTab == HomeTab.shipment
                  ? AppIcons.timer(isFilled: true)
                  : AppIcons.timer(),
            ),
            HomeButton(
              selectedTab: selectedTab,
              tab: HomeTab.profile,
              pageName: "/",
              currentIndex: 3,
              icon: selectedTab == HomeTab.profile
                  ? AppIcons.profile(isFilled: true)
                  : AppIcons.profile(),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton({
    Key? key,
    required this.selectedTab,
    required this.tab,
    required this.icon,
    required this.pageName,
    required this.currentIndex,
  }) : super(key: key);

  final HomeTab selectedTab;
  final HomeTab tab;
  final SvgPicture icon;
  final String pageName;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.read<DashboardCubit>().setTab(tab);

        if (tab == HomeTab.home && context.canPop()) {
          context.pop();
        }
        if (tab == HomeTab.home ||
            selectedTab == HomeTab.dashboard ||
            tab == selectedTab) return;

        context.pushNamed(pageName, extra: context.read<DashboardCubit>());
      },
      child: Column(
        children: [
          icon,
          const SizedBox(height: 6),
          Text(
            tab.name.replaceFirst(tab.name[0], tab.name[0].toUpperCase()),
            style: TextStyle(
              fontSize: 12,
              fontWeight:
                  tab == selectedTab ? FontWeight.w600 : FontWeight.w500,
              color: tab == selectedTab
                  ? const Color(0xFF6C34A4)
                  : const Color(0xFF959499),
            ),
          ),
        ],
      ),
    );
  }
}
