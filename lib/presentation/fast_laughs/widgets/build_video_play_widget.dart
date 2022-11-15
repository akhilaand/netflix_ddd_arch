import 'package:flutter/material.dart';
import 'package:netflix_ddd_arch/core/colors.dart';
import 'package:netflix_ddd_arch/core/constants.dart';
class BuildVideoPlayPageViewWidget extends StatelessWidget {
  final int index;
  const BuildVideoPlayPageViewWidget({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index%Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.volume_off,color: white,size: 35,)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CircleAvatar(
                      backgroundImage: NetworkImage( "https://www.themoviedb.org/t/p/w440_and_h660_face/ekZobS8isE6mA53RAiGDG93hBxL.jpg",
                      ),
                    ),
                    kHeight,
                    BuildVideoPlayActionButtons(icon: Icons.emoji_emotions,title: "Lol",),
                    BuildVideoPlayActionButtons(icon: Icons.add,title: " My List",),
                    BuildVideoPlayActionButtons(icon: Icons.share,title: "Share",),
                    BuildVideoPlayActionButtons(icon: Icons.play_arrow,title: "Play",),

                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BuildVideoPlayActionButtons extends StatelessWidget {
  final IconData icon;
  final String title;
  const BuildVideoPlayActionButtons({
    required this.title,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: (){}, icon:  Icon(icon,color: white,size: 35,)),
        Text(title,style: TextStyle(fontSize: 15),)

      ],
    );
  }
}
