import 'package:flutter/material.dart';
import 'package:netflix_ddd_arch/core/constants.dart';

import '../core/colors.dart';
class BuildIconWithTextColumn extends StatelessWidget {
  final IconData icon;
  final String title;
  final double iconSize;
  final double textSize;
  const BuildIconWithTextColumn({
    required this.title,
    required this.icon,
    this.iconSize=35,
    this.textSize=15,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,color: white,size: iconSize,),
        SizedBox(
          height: 5,
        ),
        Text(title,style:  TextStyle(fontSize: textSize),)

      ],
    );
  }
}