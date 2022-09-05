import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flix/domain/core/mainFailures.dart';
import 'package:flix/domain/downloads/downloadReop.dart';
import 'package:flix/domain/search/models/search/Search.dart';
import 'package:flix/infrastructure/search/searchRepo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/downloads/models/downlod.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final DownloadRepo downloadRepo;
  final SearchRepo searchRepo;
  SearchBloc(this.downloadRepo, this.searchRepo)
      : super(SearchState.initial()) {
    /*first event-fetch the download list
    second event-query and fetching the search list
    */

    on<SearchEvent>((event, emit) async {
      //first event-fetch the download list
      //show loading screen
      emit(state.copyWith(isLoading: true));
      //fetching the repo while loading
      final Either<MainFailure, List<Download>> downloadReopOptions =
          await downloadRepo.getDownloadImages();
      final data = downloadReopOptions.fold((MainFailure failure) {
        return const SearchState(
            isLoading: false, error: true, searchList: [], idleList: []);
      }, (List<Download> download) {
        return SearchState(
            isLoading: false, error: false, searchList: [], idleList: download);
      });
      print("=============================");
      print(data);
      emit(data);
    });
  }
}
