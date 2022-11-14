import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          onPressed: () {},
          height: 40,
          minWidth: double.infinity,
          color: blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: const Text(
            "Set Up",
            style: TextStyle(
                color: white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        kheight,
        MaterialButton(
          onPressed: () {},
          height: 40,
          color: white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: const Text(
            "See What You Can Download",
            style: TextStyle(
                color: black, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
