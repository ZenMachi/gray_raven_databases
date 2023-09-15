import 'package:flutter/material.dart';
import 'package:gray_raven_databases/ui/main_screen/main_screen_mobile.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainScreenMobile(),
    );
  }
}
