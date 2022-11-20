import 'package:flutter/material.dart';
import 'package:netflix_ddd_arch/core/colors.dart';

import '../../widgets/app_bar.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(child:  PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBarWidget(
          title: "New & Hot",
        ),
      ),),
    );
  }
}
