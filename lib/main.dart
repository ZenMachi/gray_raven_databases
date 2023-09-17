import 'package:flutter/material.dart';
import 'package:gray_raven_databases/ui/color/color_schemes.g.dart';
import 'package:gray_raven_databases/ui/main_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => Sizer(builder: (context, orientation, deviceType) =>
       MaterialApp(
         debugShowCheckedModeBanner: false,
         themeMode: ThemeMode.light,
         title: 'Flutter Demo',
         darkTheme: ThemeData(
           colorScheme: darkColorScheme,
           useMaterial3: true,
         ),
         theme: ThemeData(
           colorScheme: lightColorScheme,
           useMaterial3: true,
          ),
         home: const MainScreen(),
      )
    );


}