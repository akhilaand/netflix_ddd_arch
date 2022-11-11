import 'package:flutter/material.dart';
import 'package:netflix_ddd_arch/core/colors.dart';

class FastLaughsScreen extends StatelessWidget {
  const FastLaughsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backGroundColor,
      body: Center(child: Text("Fast laugh screen")),
    );
  }
}
