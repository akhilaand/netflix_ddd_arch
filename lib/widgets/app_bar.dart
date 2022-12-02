import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_ddd_arch/core/colors.dart';
import 'package:netflix_ddd_arch/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({super.key,required this.title,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(
          title,
          style: GoogleFonts.montserrat(
              fontSize: 30, fontWeight: FontWeight.w600),
        )),
        const Icon(
          size: 30,
          Icons.cast,
          color: white,
        ),
        kWidth,
        Container(
          height: 35,
          width: 45,
          decoration:
              const BoxDecoration(color: blue, shape: BoxShape.circle),
        ),
      ],
    );
  }
}
