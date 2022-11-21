import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_ddd_arch/core/dummy_text.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';
import '../../../widgets/build_icon_text_column.dart';
import 'build_date_widget.dart';
import 'build_movie_detail_card.dart';
class BuildComingSoonMovieDetailWidgets extends StatelessWidget {
  const BuildComingSoonMovieDetailWidgets({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        const BuildDateWidget(),
        BuildMovieDetailCards(size: size),
      ],
    );
  }

}


