part of 'home.dart';

class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      // bottomSheet: AppBottomSheet(),
      body: Text("Home"),
    );
  }
}

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Bottom Bar");
  }
}
