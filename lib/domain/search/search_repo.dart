import 'package:dartz/dartz.dart';
import 'package:netflix_ddd_arch/domain/core/failures/main_failure.dart';
import 'package:netflix_ddd_arch/domain/search/modals/serach_result_modal.dart';
import 'package:netflix_ddd_arch/domain/search/modals/trending_modal.dart';

abstract class SearchService {
  Future<Either<MainFailure, TrendingModal>> getTrendingMovie();
  Future<Either<MainFailure, SearchResultModal>> getSearchedMovieResults({required String movieName});
}
