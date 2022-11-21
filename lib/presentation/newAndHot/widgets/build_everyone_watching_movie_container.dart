import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';
import '../../../core/dummy_text.dart';
import '../../../widgets/build_icon_text_column.dart';
import 'build_movie_image_display_container.dart';
class BuildEveryOneWatchingMovieList extends StatelessWidget {
  const BuildEveryOneWatchingMovieList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        kHeight,
        const Text("Friends",
          style: TextStyle(fontWeight: FontWeight.w700,fontSize: 23),
        ),
        kHeight,
         const Text(loream_text,
          style: TextStyle(
              color: grey
          ),),
        kHeight,
        BuildMovieImageDisplayContainer(size: size),
        kHeight,
        Row(
          children: [
            Text("Friends",style: GoogleFonts.shadowsIntoLight(

                fontSize: 35,fontWeight: FontWeight.w700,letterSpacing: 2
            ),),
            const Spacer(),
            const BuildIconWithTextColumn(title: "Share", icon: Icons.share,iconSize: 35,textSize: 13),
            kWidth,
            const BuildIconWithTextColumn(title: "My List", icon: Icons.add,iconSize: 35,textSize: 13),
            kWidth,
            const BuildIconWithTextColumn(title: "Play", icon: Icons.play_arrow,iconSize: 35,textSize: 13),

          ],
        ),

      ],
    );
  }
}

