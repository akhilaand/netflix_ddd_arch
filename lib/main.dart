import 'package:flutter/material.dart';
import 'package:netflix_ddd_arch/core/colors.dart';
import 'package:netflix_ddd_arch/presentation/bottomNavigation/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: backGroundColor,
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: red),
            bodyText2: TextStyle(color: white),
          ),
          primarySwatch: Colors.blue,
        ),
        home: BottomNavigation());
  }
}
