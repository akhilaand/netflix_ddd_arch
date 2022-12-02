import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_ddd_arch/application/search/search/search_bloc.dart';
import 'package:netflix_ddd_arch/core/colors.dart';
import 'package:netflix_ddd_arch/core/constants.dart';

import '../../../widgets/build_text_title.dart';

const searchImage =
    "https://www.themoviedb.org/t/p/w500_and_h282_face/84XPpjGvxNyExjSuLQe0SzioErt.jpg";

class SearchIdleStateScreen extends StatelessWidget {
  const SearchIdleStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<SearchBloc>(context).add(const SearchEvent.initialize());
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextTitle(
          title: "Top Searches",
        ),
        kHeight,
        BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return state.trendingResultsData.isEmpty
                ? const CircularProgressIndicator()
                : Expanded(
                    child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: ((context, index) =>
                             BuildMovieTiles(movieImage: state.trendingResultsData[index].backdropPath,
                             movieName: state.trendingResultsData[index].name,
                             
                             )),
                        separatorBuilder: ((context, index) => kHeight20),
                        itemCount: 10),
                  );
          },
        )
      ],
    );
  }
}

class BuildMovieTiles extends StatelessWidget {
  final String movieImage;
  final String movieName;
  const BuildMovieTiles({super.key,required this.movieImage,required this.movieName});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      
      children: [
        Container(
          width: size.width * 0.35,
          height: 100,
          decoration:  BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://www.themoviedb.org/t/p/w500_and_h282_face/$movieImage"), fit: BoxFit.fill),
              color: red,
              borderRadius: const BorderRadius.all(Radius.circular(10))),
        ),
        kWidth,
         Expanded(
          child: Text(
            movieName,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.play_circle,
              color: white,
              size: 45,
            ))
      ],
    );
  }
}
