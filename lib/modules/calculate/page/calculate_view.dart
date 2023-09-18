part of 'calculate.dart';

class _CalculateView extends StatelessWidget {
  const _CalculateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.read<DashboardCubit>().setTab(HomeTab.home);
                    if (context.canPop()) {
                      context.pop();
                      if (context.canPop()) {
                        context.pop();
                      }
                    }
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
                        "Calculate",
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
