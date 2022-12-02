import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_ddd_arch/domain/downloads/modals/downloads.dart';

import 'package:netflix_ddd_arch/domain/core/failures/main_failure.dart';

import 'package:dartz/dartz.dart';

import '../../domain/core/api_endpoints.dart';
import '../../domain/downloads/downloads_repo.dart';

@LazySingleton(as: DownloadsRepo)
class DownloadsRepository implements DownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response = await Dio(BaseOptions()).get(downloadsAPI);
      if (response.statusCode == 200 || response.statusCode == 201) {
        ///we cant find any api which provide poster paths, so thats why we created
        ///tempmap like below
        final tempMap = [
          {"poster_path": response.data['backdrop_path']},
          {"poster_path": response.data['backdrop_path']},
          {"poster_path": response.data['backdrop_path']},
        ];
        final downloadsList = (tempMap).map((e) {
          return Downloads.fromJson(e);
        }).toList();
        return Right(downloadsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print(e);
      return const Left(MainFailure.clientFailure());
    }
  }
}
