import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flix/domain/core/mainFailures.dart';
import 'package:flix/domain/downloads/downloadReop.dart';
import 'package:flix/domain/search/IsearchRepo.dart';
import 'package:flix/domain/search/models/search/Search.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/downloads/models/downlod.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final DownloadRepo downloadRepo;
  final ISearchRepo iSearchRepo;
  SearchBloc(this.downloadRepo, this.iSearchRepo)
      : super(SearchState.initial()) {
    /*first event-fetch the download list
    second event-query and fetching the search list
    */

    on<_initialize>((event, emit) async {
      //check for the presence of data on the state first
      //first event-fetch the download list
      //show loading screen
      if (state.idleList.isNotEmpty) {
        return;
      } else {
        emit(state.copyWith(isLoading: true));
        //fetching the repo while loading
        final Either<MainFailure, List<Download>> downloadReopOptions =
            await downloadRepo.getDownloadImages();
        final result = downloadReopOptions.fold((MainFailure failure) {
          return const SearchState(
              isLoading: false, error: true, searchList: [], idleList: []);
        }, (List<Download> downloads) {
          return SearchState(
              error: false,
              isLoading: false,
              idleList: downloads,
              searchList: []);
        });

        emit(result);
      }
    });
    on<SearchMovieEvent>((event, emit) async {
      emit(SearchState(
          isLoading: true, error: false, searchList: [], idleList: []));
      final Either<MainFailure, SearchResp> searchRepoOptions =
          await iSearchRepo.getSearchResults(query: event.query);

      final result = searchRepoOptions.fold((MainFailure failure) {
        return const SearchState(
            isLoading: false, error: true, searchList: [], idleList: []);
      }, (SearchResp searchResp) {
        return SearchState(
            isLoading: false,
            error: false,
            searchList: searchResp.results,
            idleList: []);
      });
      emit(result);
    });
  }
}
