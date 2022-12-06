import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_ddd_arch/application/search/search/search_bloc.dart';
import 'package:netflix_ddd_arch/core/colors.dart';
import 'package:netflix_ddd_arch/core/constants.dart';
import 'package:netflix_ddd_arch/presentation/search_screen/widgets/search_screen_result.dart';

import 'widgets/search_screen_idle.dart';

class SearchScreen extends StatelessWidget {
  Timer? _debounce;
  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: backGroundColor,
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CupertinoSearchTextField(
                  placeholderStyle: const TextStyle(color: grey600),
                  backgroundColor: Colors.grey.shade800,
                  prefixIcon: const Icon(
                    CupertinoIcons.search,
                    color: grey,
                  ),
                  suffixIcon: const Icon(
                    CupertinoIcons.xmark_circle_fill,
                    color: white,
                  ),
                  style: const TextStyle(color: white),
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      if (_debounce?.isActive??false) _debounce!.cancel();
                      _debounce = Timer(const Duration(milliseconds: 1000), () {
                        BlocProvider.of<SearchBloc>(context)
                            .add(SearchMovie(movieQuery: value));
                      });
                    }
                  },
                ),
                kHeight,
                state.searchResultsData.isNotEmpty
                    ? Expanded(
                        child: SearchResultScreen(
                            searchResultsData: state.searchResultsData))
                    : const Expanded(child: SearchIdleStateScreen()),
              ],
            ),
          )),
        );
      },
    );
  }
}
