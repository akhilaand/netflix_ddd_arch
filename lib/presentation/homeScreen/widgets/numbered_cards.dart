import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import '../../../core/colors.dart';
class NumberedCards extends StatelessWidget {
  final int index;
  const NumberedCards({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 40,
              ),
              Container(
                width: 130,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://www.themoviedb.org/t/p/w440_and_h660_face/sKCr78MXSLixwmZ8DyJLrpMsd15.jpg")),
                    color: red,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -22,left: index==0?0:-7,
            child:  BorderedText(
              strokeColor: white,

              child: Text((index+1).toString(),
              style: const TextStyle(
                color: black,
                fontWeight: FontWeight.w900,
                fontSize: 110
              ),
              ),
            ),
          )
        ],
      ),
    );
  }
}