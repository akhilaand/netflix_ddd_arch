import 'package:flutter/material.dart';

import '../../../core/colors.dart';
class BuildHomeScreenBanner extends StatelessWidget {
  const BuildHomeScreenBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.network(
            "https://www.themoviedb.org/t/p/w440_and_h660_face/4FAA18ZIja70d1Tu5hr5cj2q1sB.jpg",
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const BuildBannerIcons(text: "My List",
                icon:Icons.add ,
              ),
              TextButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(white)
                  ),
                  icon: const Icon(
                    Icons.play_arrow,
                    color: black,
                  ),
                  label: const Text(
                    "Play",
                    style: TextStyle(color: black),
                  )),
              const BuildBannerIcons(text: "My List",
                icon:Icons.info_outline ,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class BuildBannerIcons extends StatelessWidget {
  final IconData icon;
  final String text;
  const BuildBannerIcons({
    Key? key,
    required this.icon,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Icon(icon,color: white,size: 30,),
        const SizedBox(
          height: 3,
        ),
        Text(text,
          style: const TextStyle(
              fontSize: 15
          ),
        )
      ],
    );
  }
}