import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_ddd_arch/domain/downloads/downloads_repo.dart';

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
    on<_Initialize>((event, emit) async {
      emit(state.copyWith(isError: false,isLoading: true,searchResultsData: [],trendingResultsData: []));
      final result = await _searchService.getTrendingMovie();
      emit(result.fold(
        (failure) => state.copyWith(isError: true,isLoading: false,searchResultsData: [],trendingResultsData: []),
         (success) => state.copyWith(isError: true,isLoading: false,searchResultsData: [],trendingResultsData: success.results)));
    });

    //for loading search result
    on<_SearchMovie>((event, emit) {});
  }
}
