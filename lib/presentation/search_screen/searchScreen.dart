import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ddd_arch/core/colors.dart';
import 'package:netflix_ddd_arch/core/constants.dart';
import 'package:netflix_ddd_arch/presentation/search_screen/widgets/search_screen_result.dart';

import 'widgets/search_screen_idle.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CupertinoSearchTextField(
              placeholderStyle: const TextStyle(color: grey600),
              backgroundColor: Colors.grey.shade800,
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: grey,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: white,
              ),
              style: const TextStyle(color: white),
            ),
            kHeight,
            const Expanded(child: SearchIdleStateScreen()),
            // const Expanded(child: SearchResultScreen()),

          
          
          ],
        ),
      )),
    );
  }
}
