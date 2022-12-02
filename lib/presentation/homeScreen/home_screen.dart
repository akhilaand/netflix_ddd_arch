import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_ddd_arch/core/colors.dart';
import 'package:netflix_ddd_arch/core/constants.dart';
import 'package:netflix_ddd_arch/presentation/homeScreen/widgets/build_home_screen_banner.dart';
import 'package:netflix_ddd_arch/presentation/homeScreen/widgets/build_home_screen_custom_appbar.dart';
import 'package:netflix_ddd_arch/presentation/homeScreen/widgets/build_movie_cards.dart';
import 'package:netflix_ddd_arch/presentation/homeScreen/widgets/build_movie_category_scroll_view.dart';
import 'package:netflix_ddd_arch/presentation/homeScreen/widgets/build_number_titled_scroll_category.dart';
import 'package:netflix_ddd_arch/presentation/homeScreen/widgets/numbered_cards.dart';
import 'package:netflix_ddd_arch/widgets/build_text_title.dart';
ValueNotifier<bool>scrollNotifier=ValueNotifier(true);
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: scrollNotifier,
              builder: (BuildContext ctx,index,_){
                return NotificationListener<UserScrollNotification>(
                  onNotification: (notification){
                    final ScrollDirection scrollDirection=notification.direction;
                    if(scrollDirection==ScrollDirection.forward){
                      scrollNotifier.value=true;
                    }else if(scrollDirection==ScrollDirection.reverse){
                      scrollNotifier.value=false;
                    }
                    return true;
                  },
                  child: Stack(
                    children: [
                      const BuildHomeScreenBody(),
BuildHomeScreenCustomAppbar(value: scrollNotifier.value,)
                    ],
                  ),
                );
              })


          ),
    );
  }
}

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


