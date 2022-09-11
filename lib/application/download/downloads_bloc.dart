import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flix/domain/core/mainFailures.dart';
import 'package:flix/domain/downloads/downloadReop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/downloads/models/downlod.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final DownloadRepo repo;
  DownloadsBloc(this.repo) : super(DownloadsState.initial()) {
    on<_GetDownloadImages>((event, emit) async {
     if(state.downloads.isEmpty){

        emit(state.copyWith(isLoading: true, optonFailureSuccess: none()));}
        
        final Either<MainFailure, List<Download>> repoOptions =
            await repo.getDownloadImages(page:event.page);

        emit(repoOptions.fold(
            (failure) { 
             
              return
              state.copyWith(
                isLoading: false, optonFailureSuccess: Some(Left(failure)));},
            (success) {
              
              return
               state.copyWith(
                downloads: success,
                isLoading: false,
                optonFailureSuccess: Some(Right(success)));}));
               
      
    });
  }
}
