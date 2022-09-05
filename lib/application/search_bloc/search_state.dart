part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required bool error,
    required List<SearchResultData>searchList,
    required List<Download>idleList
  })=_SearchState;
   factory SearchState.initial(

  ){
return const SearchState(isLoading: true, error: false, searchList: [], idleList: []);
  } 
}
