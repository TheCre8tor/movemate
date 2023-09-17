part of 'dashboard.dart';

class _Dashboard extends StatelessWidget {
  const _Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.select(
      (DashboardCubit cubit) => cubit.state.tab,
    );

    return Scaffold(
      body: IndexedStack(
        index: selectedTab.index,
        children: const [
          Home(),
          Calculate(),
          Placeholder(),
          Placeholder(),
        ],
      ),
      bottomNavigationBar: selectedTab != HomeTab.home
          ? const SizedBox.shrink()
          : BottomAppBar(
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
                    _HomeButton(
                      selectedTab: selectedTab,
                      tab: HomeTab.home,
                      icon: selectedTab == HomeTab.home
                          ? AppIcons.home(isFilled: true)
                          : AppIcons.home(),
                    ),
                    _HomeButton(
                      selectedTab: selectedTab,
                      tab: HomeTab.calculate,
                      icon: selectedTab == HomeTab.calculate
                          ? AppIcons.home(isFilled: true)
                          : AppIcons.home(),
                    ),
                    _HomeButton(
                      selectedTab: selectedTab,
                      tab: HomeTab.shipment,
                      icon: selectedTab == HomeTab.shipment
                          ? AppIcons.home(isFilled: true)
                          : AppIcons.home(),
                    ),
                    _HomeButton(
                      selectedTab: selectedTab,
                      tab: HomeTab.profile,
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

class _HomeButton extends StatelessWidget {
  const _HomeButton({
    Key? key,
    required this.selectedTab,
    required this.tab,
    required this.icon,
  }) : super(key: key);

  final HomeTab selectedTab;
  final HomeTab tab;
  final SvgPicture icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.read<DashboardCubit>().setTab(tab);
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

class Calculate extends StatelessWidget {
  const Calculate({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TextButton(
            onPressed: () =>
                context.read<DashboardCubit>().setTab(HomeTab.home),
            child: Text(
              "Bo Back",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
