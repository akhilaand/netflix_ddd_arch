part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {

  const factory SearchState({
    required List<TrendingResults> trendingResultsData,
    required List<SEarchResult> searchResultsData,
     required bool isLoading,
     required bool isSearchedData,
    required bool isError,
  }) = _SearchState;
  


   factory SearchState.initial()=>const SearchState(trendingResultsData: [],
   searchResultsData: [], 
   isSearchedData:false,
   isLoading: true, 
   isError: false);

}
