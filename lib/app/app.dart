import 'package:flutter/material.dart';
import 'package:todoist/core/router.dart';
import 'package:todoist/ui/utils/collor_pallete.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Todoist',
      routerConfig: router,
      theme: ThemeData(
        fontFamily: 'Spartan',
        colorScheme: const ColorScheme.light(
          primary: ColorPallete.blue,
        ),
      ),
    );
  }
}
