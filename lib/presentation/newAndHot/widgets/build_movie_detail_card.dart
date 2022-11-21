import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';
import '../../../core/dummy_text.dart';
import '../../../widgets/build_icon_text_column.dart';
import 'build_movie_image_display_container.dart';
class BuildMovieDetailCards extends StatelessWidget {
  const BuildMovieDetailCards({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: size.width-60,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildMovieImageDisplayContainer(size: size),
          kHeight,
          Row(
            children: [
              Text("Slumberland",style: GoogleFonts.shadowsIntoLight(

                  fontSize: 35,fontWeight: FontWeight.w700,letterSpacing: 2
              ),),
              const Spacer(),
              const BuildIconWithTextColumn(title: "Remind Me", icon: Icons.notifications,iconSize: 22,textSize: 13),
              kWidth,
              const BuildIconWithTextColumn(title: "Info", icon: Icons.info_outline,iconSize: 22,textSize: 13),
              kWidth
            ],
          ),
          const Text("Slumberland",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 16
            ),
          ),
          kHeight,
          const Text(loream_text)
        ],
      ),
    );
  }
}
