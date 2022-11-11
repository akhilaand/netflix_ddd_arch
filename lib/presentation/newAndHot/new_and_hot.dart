import 'package:flutter/material.dart';
import 'package:netflix_ddd_arch/core/colors.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backGroundColor,
      body: Center(child: Text("New and hot screen")),
    );
  }
}
