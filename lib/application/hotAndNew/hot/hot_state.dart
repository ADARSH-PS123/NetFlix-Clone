part of 'hot_bloc.dart';

@freezed
class HotState with _$HotState {
  const factory HotState(
      {required bool isLoading,
      required bool isError,
      required List<Result> results}) = _HotState;
  factory HotState.initialize() {
    return const HotState(isLoading: false, isError: false, results: []);
  }
}
