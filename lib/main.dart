import 'package:flutter/material.dart';
import 'package:music_app/screens/home/home_view.dart';
import 'package:music_app/utils/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: kwhiteClr,
          appBarTheme: AppBarTheme(
            color: kwhiteClr,
            elevation: 0,
            iconTheme: IconThemeData(
              color: kblackClr,
            ),
          ),
        ),
        home: const HomeView());
  }
}
