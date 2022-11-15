import 'package:flutter/material.dart';
import 'package:netflix_ddd_arch/core/colors.dart';
import 'package:netflix_ddd_arch/core/constants.dart';
import 'package:netflix_ddd_arch/presentation/homeScreen/widgets/build_home_screen_banner.dart';
import 'package:netflix_ddd_arch/presentation/homeScreen/widgets/build_movie_cards.dart';
import 'package:netflix_ddd_arch/presentation/homeScreen/widgets/build_movie_category_scroll_view.dart';
import 'package:netflix_ddd_arch/presentation/homeScreen/widgets/build_number_titled_scroll_category.dart';
import 'package:netflix_ddd_arch/presentation/homeScreen/widgets/numbered_cards.dart';
import 'package:netflix_ddd_arch/widgets/build_text_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
          child: ListView(
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
      )),
    );
  }
}


