import 'package:flutter/material.dart';
import 'package:movemate/shared/infrastructure/router/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Montserrat"),
      routerConfig: AppRouter.router,
    );
  }
}
