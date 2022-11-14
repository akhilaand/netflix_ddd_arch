import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kheight,
        Row(
          children: const [
            Icon(
              Icons.settings,
              color: white,
            ),
            kWidth,
            Text(
              "Smart Downloads",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            )
          ],
        ),
      ],
    );
  }
}
