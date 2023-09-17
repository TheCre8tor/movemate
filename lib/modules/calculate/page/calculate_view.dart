part of 'calculate.dart';

class _CalculateView extends StatelessWidget {
  const _CalculateView({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.select(
      (DashboardCubit cubit) => cubit.state.tab,
    );

    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {
      //       context.read<DashboardCubit>().setTab(HomeTab.home);
      //       context.pop();
      //     },
      //     icon: const Icon(Icons.arrow_back_ios_new),
      //   ),
      //   title: const Text("Shipment history"),
      //   flexibleSpace: Text("Ghsgshs"),
      // ),
      body: Column(
        children: [
          CustomAppBar(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.read<DashboardCubit>().setTab(HomeTab.home);
                    context.pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Shipment history",
                        style: TextStyle(
                          fontSize: 15.5,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 50),
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              TextButton(
                onPressed: () =>
                    context.read<DashboardCubit>().setTab(HomeTab.home),
                child: const Text(
                  "Bo Back",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const Text("Calculate page")
            ],
          ),
        ],
      ),
      bottomSheet: const AppBottomBar(),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF6C34A4),
      child: SafeArea(bottom: false, child: child),
    );
  }
}
