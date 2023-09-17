part of 'dashboard.dart';

class _Dashboard extends StatelessWidget {
  const _Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.select(
      (DashboardCubit cubit) => cubit.state.tab,
    );

    return Scaffold(
      body: const Home(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.only(
            top: 17.5,
            right: 30.5,
            left: 30.5,
          ),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    ? AppIcons.home(isFilled: true)
                    : AppIcons.home(),
              ),
              HomeButton(
                selectedTab: selectedTab,
                tab: HomeTab.shipment,
                pageName: "/",
                currentIndex: 2,
                icon: selectedTab == HomeTab.shipment
                    ? AppIcons.home(isFilled: true)
                    : AppIcons.home(),
              ),
              HomeButton(
                selectedTab: selectedTab,
                tab: HomeTab.profile,
                pageName: "/",
                currentIndex: 3,
                icon: selectedTab == HomeTab.profile
                    ? AppIcons.home(isFilled: true)
                    : AppIcons.home(),
              ),
            ],
          ),
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
          const SizedBox(height: 4),
          Text(
            tab.name.replaceFirst(tab.name[0], tab.name[0].toUpperCase()),
            style: const TextStyle(
              fontSize: 11,
              color: Color(0xFF461257),
            ),
          ),
        ],
      ),
    );
  }
}
