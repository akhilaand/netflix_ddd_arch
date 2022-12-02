import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_ddd_arch/core/colors.dart';
import 'package:netflix_ddd_arch/core/constants.dart';
import 'package:netflix_ddd_arch/presentation/downloads/widgets/section_1.dart';
import 'package:netflix_ddd_arch/widgets/app_bar.dart';

import 'widgets/section_2.dart';
import 'widgets/section_3.dart';

class DownloadsScreen extends StatelessWidget {
  DownloadsScreen({super.key});
  final List widgets = [const Section1(), Section2(), const Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBarWidget(
            title: "Downloads",
          ),
        ),
        body: ListView.separated(
            itemBuilder: ((context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: widgets[index])),
            separatorBuilder: ((context, index) => const SizedBox(
                  height: 15,
                )),
            itemCount: widgets.length));
  }
}
