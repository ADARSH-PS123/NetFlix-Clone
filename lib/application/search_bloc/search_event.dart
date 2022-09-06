part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initialize() = _initialize;
    const factory SearchEvent.search({required String query})=SearchMovieEvent;
}