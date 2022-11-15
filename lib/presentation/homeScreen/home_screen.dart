import 'package:flutter/material.dart';
import 'package:netflix_ddd_arch/core/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(child: ListView()),
    );
  }
}
