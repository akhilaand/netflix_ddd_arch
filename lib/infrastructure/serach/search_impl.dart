import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_ddd_arch/domain/search/modals/serach_result_modal.dart';
import 'package:netflix_ddd_arch/domain/search/modals/trending_modal.dart';

import 'package:netflix_ddd_arch/domain/core/failures/main_failure.dart';

import 'package:dartz/dartz.dart';

import '../../domain/core/api_endpoints.dart';
import '../../domain/search/search_repo.dart';

@LazySingleton(as: SearchService)
class SearchImplement implements SearchService {
  @override
  Future<Either<MainFailure, TrendingModal>> getTrendingMovie() async {
    try {
      final Response response = await Dio(BaseOptions()).get(trendingAPI);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = TrendingModal.fromJson(response.data);
        print(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log("error throw from search implement ${e.toString()}");
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, SearchResultModal>> getSearchedMovieResults(
      {required String movieName}) async {
    final params = {"query": movieName};
    try {
      var response =
          await Dio(BaseOptions()).get(searchMovieAPI, queryParameters: params);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResultModal.fromJson(response.data);
        print("result from search printed below");
        print(response.data);
        return Right(result);
      }
    } catch (e) {
      log("error throw from getSearchedMovieResults $e");
      return const Left(MainFailure.clientFailure());
    }
    throw UnimplementedError();
  }
}
