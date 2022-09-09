part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState(
      {required bool isLoading,
      required bool isError,
      
      required List<Category> videos}) = _FastLaughState;

  factory FastLaughState.initial() {
    return const FastLaughState(
        isLoading: false, isError: false, videos: []);
  }
}
