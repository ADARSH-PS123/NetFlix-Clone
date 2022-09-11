import 'package:bloc/bloc.dart';

import 'package:flix/domain/core/mainFailures.dart';

import 'package:flix/domain/fastLaugh/iVideoRepo.dart';

import 'package:flix/domain/fastLaugh/models/videos/videos.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

ValueNotifier<Set<String>> notifierLiked = ValueNotifier({});

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  IvideoRepo videoRepo;
  FastLaughBloc(this.videoRepo) : super(FastLaughState.initial()) {
    on<_Starting>((event, emit) async {
      emit(const FastLaughState(isLoading: true, isError: false, videos: []));
      final videoRepoOptions = await videoRepo.getVodeos();

      final result = videoRepoOptions.fold((MainFailure failure) {
        return const FastLaughState(
            isLoading: false, isError: true, videos: []);
      }, (Videos videos) {
        return FastLaughState(
            isLoading: false, isError: true, videos: videos.categories);
      });

      emit(result);
    });
  }
}
