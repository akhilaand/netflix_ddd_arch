import 'package:dartz/dartz.dart';
import 'package:netflix_ddd_arch/domain/core/failures/main_failure.dart';
import 'package:netflix_ddd_arch/domain/downloads/modals/downloads.dart';

abstract class DownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages();
}
