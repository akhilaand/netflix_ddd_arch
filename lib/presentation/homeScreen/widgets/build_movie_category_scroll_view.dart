import 'package:flutter/material.dart';

import '../../../widgets/build_text_title.dart';
import 'build_movie_cards.dart';
class BuildMovieCategoryScrollView extends StatelessWidget {
  final String title;
  const BuildMovieCategoryScrollView({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        TextTitle(title: title),
        LimitedBox(
          maxHeight: 200,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,

              itemBuilder: (ctx,index)=>const BuildMovieCards()),
        )
      ],
    );
  }
}
