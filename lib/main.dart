import 'package:bmi_app/screens/home_screen.dart';
import 'package:bmi_app/screens/result_screen.dart';
import 'package:bmi_app/utils/route.dart';
import 'package:bmi_app/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThem.light,
      darkTheme: AppThem.dark,
      themeMode: .dark,
      initialRoute: AppRoute.homeScreen,
      routes: {
        AppRoute.homeScreen: (context) => HomeScreen(),
        AppRoute.resultScreen: (context) => ResultScreen(),
      },
    );
  }
}
