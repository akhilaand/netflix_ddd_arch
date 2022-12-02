import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_ddd_arch/core/colors.dart';
import 'package:netflix_ddd_arch/core/constants.dart';
import 'package:netflix_ddd_arch/presentation/newAndHot/widgets/build_coming_soon_movie_details.dart';
import 'package:netflix_ddd_arch/presentation/newAndHot/widgets/build_everyone_watching_movie_container.dart';
import 'package:netflix_ddd_arch/presentation/newAndHot/widgets/customer_new_hot_appbar.dart';
import 'package:netflix_ddd_arch/widgets/build_icon_text_column.dart';

import '../../core/dummy_text.dart';
import '../../widgets/app_bar.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: const PreferredSize(
              preferredSize: Size(0, 90), child: CustomNewAndHotAppbar()),
          backgroundColor: backGroundColor,
          body: TabBarView(children: [
            _buildComingSoon(context: context),
            _buildEveryOneWatching(context: context),
          ])),
    );
  }

  Widget _buildComingSoon({required BuildContext context}) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        kHeight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) =>
                BuildComingSoonMovieDetailWidgets(size: size),
            separatorBuilder: (BuildContext context, int index) => kHeight,
            itemCount: 10,
          ),
        ),
      ],
    );
  }

  Widget _buildEveryOneWatching({required BuildContext context}) {
    Size size=MediaQuery.of(context).size;
    return ListView.separated(
      itemBuilder: (BuildContext context, int index)=>BuildEveryOneWatchingMovieList(size: size),
      itemCount: 10,
      separatorBuilder: (BuildContext context, int index)=>kHeight,


    );
  }
}

