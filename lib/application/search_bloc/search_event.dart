part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initialize({required String page}) = _initialize;
  const factory SearchEvent.search({required String query}) =_SearchMovieEvent;
  const factory SearchEvent.scroll({required String page})=_ScrollEvent;
}
