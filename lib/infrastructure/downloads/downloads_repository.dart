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
        final List<Downloads> downloadsList = [];
        for (final raw in response.data) {
          downloadsList.add(Downloads.fromJson(raw as Map<String, dynamic>));
        }
        print(downloadsList);
        return Right(downloadsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
