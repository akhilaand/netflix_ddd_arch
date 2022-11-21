import 'package:flutter/material.dart';

import '../../../core/colors.dart';
class BuildMovieImageDisplayContainer extends StatelessWidget {
  const BuildMovieImageDisplayContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width,
        color: red,
        child: Stack(
          children: [
            Image.network("https://www.themoviedb.org/t/p/original/64Btfwp7JWP7qTloYQcoqDaraN3.jpg",
              fit: BoxFit.fill,
            ),
            Positioned(
                bottom: 10,
                right: 10,

                child: CircleAvatar(
                    backgroundColor: grey.withOpacity(0.4),
                    child: Center(child: IconButton(onPressed: (){}, icon: const Icon(Icons.volume_off,color: white,size: 25,))))
            ),

          ],
        )
    );
  }
}
