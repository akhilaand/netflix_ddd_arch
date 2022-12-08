import 'package:flutter/material.dart';
import 'package:netflix_ddd_arch/core/colors.dart';
import 'package:netflix_ddd_arch/core/constants.dart';

import '../../../core/strings.dart';
import '../../../domain/search/modals/trending_modal.dart';
import '../../../widgets/build_icon_text_column.dart';

class BuildVideoPlayPageViewInheritedWidget extends InheritedWidget {
  final Widget widget;
  final TrendingResults data;
  const BuildVideoPlayPageViewInheritedWidget(
      {super.key, required this.widget, required this.data})
      : super(child: widget);

  @override
  bool updateShouldNotify(
      covariant BuildVideoPlayPageViewInheritedWidget oldWidget) {
    return oldWidget.data != data;
  }

  static BuildVideoPlayPageViewInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<
        BuildVideoPlayPageViewInheritedWidget>();
  }
}

class BuildVideoPlayPageViewWidget extends StatelessWidget {
  final int index;
  const BuildVideoPlayPageViewWidget({Key? key, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final posterPath =
        BuildVideoPlayPageViewInheritedWidget.of(context)!.data.posterPath;
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      color: white,
                      size: 35,
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage("$imageAppendUrl/$posterPath"),
                    ),
                    kHeight,
                    const BuildIconWithTextColumn(
                      icon: Icons.emoji_emotions,
                      title: "Lol",
                    ),
                    const BuildIconWithTextColumn(
                      icon: Icons.add,
                      title: " My List",
                    ),
                    const BuildIconWithTextColumn(
                      icon: Icons.share,
                      title: "Share",
                    ),
                    const BuildIconWithTextColumn(
                      icon: Icons.play_arrow,
                      title: "Play",
                    ),
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


