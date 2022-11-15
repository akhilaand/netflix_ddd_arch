import 'package:flutter/material.dart';
import 'package:netflix_ddd_arch/core/constants.dart';

import '../../../core/colors.dart';
import '../../../widgets/build_text_title.dart';
const String image=    "https://www.themoviedb.org/t/p/w440_and_h660_face/ccBe5BVeibdBEQU7l6P6BubajWV.jpg";
class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        const TextTitle(title: "Search Results"),
        kHeight,
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1/1.4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10

              ),
              itemBuilder: (ctx,index)=>const BuildMainGridViewCards()),
        )
      ],
    );
  }
}
class BuildMainGridViewCards extends StatelessWidget {
  const BuildMainGridViewCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: red,
          image: DecorationImage(image: NetworkImage(image),fit: BoxFit.cover),

          borderRadius: BorderRadius.all(Radius.circular(7))
      ),
    );
  }
}
