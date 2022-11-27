import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_ddd_arch/domain/downloads/downloads_repo.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/downloads/modals/downloads.dart';

part 'downloads_state.dart';
part 'downloads_event.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final DownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(state.copyWith(isLoading: true, downloadsSuccessOrFailure: none()));

      final Either<MainFailure, List<Downloads>> downloadedData =
          await _downloadsRepo.getDownloadsImages();

      emit(downloadedData.fold(
          (failure) => state.copyWith(
              isLoading: false, downloadsSuccessOrFailure: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false, downloadsSuccessOrFailure: Some(Right(success)),
              downloads: success
              ),));
    });
  }
}
