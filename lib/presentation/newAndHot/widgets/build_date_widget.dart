import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../../../core/colors.dart';
class BuildDateWidget extends StatelessWidget {
  const BuildDateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 60,
        height: 400,
        child: StickyHeader(
            overlapHeaders: true,
            header:  RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'Feb\n',
            style: TextStyle(
              fontFamily: 'Your App Font Family',
            ),
            children: [

              TextSpan(
                text: '11',
                style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 4,
                    fontWeight: FontWeight.w700,
                    color: white
                )
              ),

            ],
          ),
        ), content: Container()));


  }
}
