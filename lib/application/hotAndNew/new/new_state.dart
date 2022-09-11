part of 'new_bloc.dart';

@freezed
class NewState with _$NewState {
  const factory NewState(
      {required bool isLoading,
      required bool isError,
      required List<Result> results}) = _NewState;

  factory NewState.initialize() {
    return const NewState(isLoading: false, isError: false, results: []);
  }
}
