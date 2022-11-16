import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import 'build_home_screen_banner.dart';
import 'build_movie_category_scroll_view.dart';
import 'build_number_titled_scroll_category.dart';
class BuildHomeScreenBody extends StatelessWidget {
  const BuildHomeScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        BuildHomeScreenBanner(),
        kHeight,

        BuildMovieCategoryScrollView(
          title: "Trending Now",
        ),
        kHeight,
        BuildMovieCategoryScrollView(
          title: "Tense Dramas",
        ),
        kHeight,
        BuildNumberTitledCategoryScrollView(),
        kHeight,
        BuildMovieCategoryScrollView(
          title: "Best Of This Year",
        ),
        kHeight,
        BuildMovieCategoryScrollView(
          title: "Children Best",
        ),
      ],
    );
  }
}
