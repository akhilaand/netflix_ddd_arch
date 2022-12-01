import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_ddd_arch/application/downloads/downloads_bloc.dart';
import 'package:netflix_ddd_arch/core/strings.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';

class Section2 extends StatelessWidget {
  final List<String> imageList = [
    "https://www.themoviedb.org/t/p/w440_and_h660_face/ccBe5BVeibdBEQU7l6P6BubajWV.jpg",
    "https://www.themoviedb.org/t/p/w440_and_h660_face/ekZobS8isE6mA53RAiGDG93hBxL.jpg",
    "https://www.themoviedb.org/t/p/w440_and_h660_face/wKiOkZTN9lUUUNZLmtnwubZYONg.jpg"
  ];
  Section2({super.key});

  @override
  Widget build(BuildContext context) {
    print("calling again-----------------");
    BlocProvider.of<DownloadsBloc>(context)
        .add(const DownloadsEvent.getDownloadsImage());

    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   BlocProvider.of<DownloadsBloc>(context)
    //     .add(const DownloadsEvent.getDownloadsImage());
    // });
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const Text(
          "Introducing Downloads for You",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
          textAlign: TextAlign.center,
        ),
        kHeight,
        BlocBuilder<DownloadsBloc, DownloadsState>(builder: (context, state) {
          return state.downloads.isEmpty
              ? const CircularProgressIndicator()
              : SizedBox(
                  height: size.width,
                  width: size.width,
                  child: Stack(alignment: Alignment.center, children: [
                    CircleAvatar(
                        radius: 120,
                        backgroundColor: Colors.white24.withOpacity(0.28)),
                    DownloadsImageWidget(
                      image:
                          "$imageAppendUrl/${state.downloads[0].posterPath}",
                      height: size.width * 0.4,
                      margin: const EdgeInsets.only(left: 120, bottom: 20),
                      size: size,
                      angle: 20,
                    ),
                    DownloadsImageWidget(
                      image:
                          "$imageAppendUrl/${state.downloads[0].posterPath}",
                      height: size.width * 0.4,
                      margin: const EdgeInsets.only(right: 120, bottom: 20),
                      size: size,
                      angle: -20,
                    ),
                    DownloadsImageWidget(
                      image:
                          "$imageAppendUrl/${state.downloads[0].posterPath}",
                      height: size.width * 0.47,
                      margin: const EdgeInsets.only(right: 0),
                      size: size,
                    ),
                  ]),
                );
        }),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  final double angle;
  final String image;
  final double height;
  final EdgeInsetsGeometry margin;
  const DownloadsImageWidget(
      {Key? key,
      required this.size,
      required this.height,
      this.angle = 0,
      required this.margin,
      required this.image})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Center(
        child: Container(
          margin: margin,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    image,
                  ),
                  fit: BoxFit.fill),
              color: white,
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          height: height,
          width: size.width * 0.34,
        ),
      ),
    );
  }
}
