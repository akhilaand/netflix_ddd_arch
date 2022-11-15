import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ddd_arch/core/colors.dart';
import 'package:netflix_ddd_arch/core/constants.dart';
import 'package:netflix_ddd_arch/presentation/search_screen/widgets/search_text_title.dart';

const searchImage="https://www.themoviedb.org/t/p/w500_and_h282_face/84XPpjGvxNyExjSuLQe0SzioErt.jpg";

class SearchIdleStateScreen extends StatelessWidget {
  const SearchIdleStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Top Searches",),
        kHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: ((context, index) => const BuildMovieTiles()),
              separatorBuilder: ((context, index) => kHeight20),
              itemCount: 10),
        )
      ],
    );
  }
}


class BuildMovieTiles extends StatelessWidget {
  const BuildMovieTiles({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Row(
      children:  [
        Container(
          width: size.width*0.35,
          height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage(searchImage),fit: BoxFit.fill),
              color: red,
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
        ),
        kWidth,
        const Expanded(
          child: Text("Movie Name",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 19
          ),
          ),
        ),
        IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.play_circle,color: white,size: 45,))  
      ],
    );
  }
}
