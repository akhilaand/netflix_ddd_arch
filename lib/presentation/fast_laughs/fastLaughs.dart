import 'package:flutter/material.dart';
import 'package:netflix_ddd_arch/core/colors.dart';
import 'package:netflix_ddd_arch/presentation/fast_laughs/widgets/build_video_play_widget.dart';

class FastLaughsScreen extends StatelessWidget {
  const FastLaughsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(child:PageView(
        scrollDirection: Axis.vertical,
        children:List.generate(20, (index) =>  BuildVideoPlayPageViewWidget(index: index,))

       ,
      )),
    );
  }
}
