import 'package:flutter/material.dart';

import '../../../core/colors.dart';
class BuildMovieCards extends StatelessWidget {
  const BuildMovieCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 130,
        decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://www.themoviedb.org/t/p/w440_and_h660_face/sKCr78MXSLixwmZ8DyJLrpMsd15.jpg")),
            color: red,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
      ),
    );
  }
}