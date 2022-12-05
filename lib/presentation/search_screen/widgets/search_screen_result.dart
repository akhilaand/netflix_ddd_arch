import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_ddd_arch/core/constants.dart';

import '../../../application/search/search/search_bloc.dart';
import '../../../core/colors.dart';
import '../../../domain/search/modals/serach_result_modal.dart';
import '../../../widgets/build_text_title.dart';

const String image =
    "https://www.themoviedb.org/t/p/w440_and_h660_face/ccBe5BVeibdBEQU7l6P6BubajWV.jpg";

class SearchResultScreen extends StatelessWidget {
  List<SEarchResult> searchResultsData;
  SearchResultScreen({Key? key, required this.searchResultsData})
      : super(key: key);

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
              itemCount: searchResultsData.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1 / 1.4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (ctx, index) =>  BuildMainGridViewCards(index:index)),
        )
      ],
    );
  }
}

class BuildMainGridViewCards extends StatelessWidget {
  final int index;
  const BuildMainGridViewCards({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
             //some image links are null so we given default image in case null occured
              image: DecorationImage(
                  image: NetworkImage("https://www.themoviedb.org/t/p/w500_and_h282_face/${state.searchResultsData[index].backdropPath}"),
                  fit: BoxFit.contain),
              borderRadius: const BorderRadius.all(Radius.circular(7))),
        );
      },
    );
  }
}
