import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_ddd_arch/domain/downloads/downloads_repo.dart';
import 'package:netflix_ddd_arch/domain/search/modals/serach_result_modal.dart';

import '../../../domain/search/modals/trending_modal.dart';
import '../../../domain/search/search_repo.dart';

part 'search_state.dart';
part 'search_event.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchService _searchService;
  SearchBloc(this._searchService) : super(SearchState.initial()) {
    //for loading trending movie
    on<Initialize>((event, emit) async {
      emit(const SearchState(
          isError: false,
          isSearchedData:false,
          isLoading: true,
          searchResultsData: [],
          trendingResultsData: []));
      final result = await _searchService.getTrendingMovie();
      final resultState = result.fold(
          (failure) => state.copyWith(
              isError: true,
              isSearchedData:false,
              isLoading: false,
              searchResultsData: [],
              trendingResultsData: []),
          (success) => state.copyWith(
            isSearchedData:false,
              isError: true,
              isLoading: false,
              searchResultsData: [],
              trendingResultsData: success.results));
      emit(resultState);
    });

    //for loading search result
    on<SearchMovie>((event, emit) async {
      emit(state.copyWith(
          isError: false,
          isSearchedData:true,
          isLoading: true,
          searchResultsData: [],
          trendingResultsData: []));
      final result = await _searchService.getSearchedMovieResults(
          movieName: event.movieQuery);
      final resultState = result.fold(
          (failure) => state.copyWith(
              isError: true,
              isSearchedData:true,
              isLoading: false,
              searchResultsData: [],
              trendingResultsData: []),
          (success) => state.copyWith(
              isError: true,
              isSearchedData:true,
              isLoading: false,
              searchResultsData: success.results,
              trendingResultsData: []));
      emit(resultState);
    });
  }
}
