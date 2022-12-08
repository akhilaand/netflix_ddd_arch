import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_ddd_arch/domain/search/modals/trending_modal.dart';

import '../../domain/downloads/downloads_repo.dart';
import '../../domain/downloads/modals/downloads.dart';
import '../../domain/search/search_repo.dart';
import '../search/search/search_bloc.dart';

part 'fast_laugh_state.dart';
part 'fast_laugh_event.dart';
part 'fast_laugh_bloc.freezed.dart';

final _videoUrls = [
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4"
];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(
    SearchService _searchService,
  ) : super(FastLaughState.initial()) {
    on<Initilaized>((event, emit) async {
      emit(
          const FastLaughState(videoList: [], isLoading: true, isError: false));
      final result = await _searchService.getTrendingMovie();
      final state = result.fold(
          (failure) => const FastLaughState(
              videoList: [], isLoading: false, isError: true),
          (success) => FastLaughState(
              videoList: success.results, isLoading: false, isError: false));
      emit(state);
    });
  }
}
