import 'package:flutter/material.dart';
import 'package:gray_raven_databases/ui/main_screen/main_screen_mobile.dart';
import 'package:gray_raven_databases/ui/main_screen/main_screen_web.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: LayoutBuilder (
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 1024) {
            return MainScreenMobile();
          } else {
            return MainScreenWeb();
          }
        }
      )
    );
  }
}
