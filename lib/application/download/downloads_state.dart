part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required Option<Either<MainFailure,List<Download>>> optonFailureSuccess,
    
  required  List<Download> downloads,
  }) = _DownlodStats;
  factory DownloadsState.initial(){
    return const  DownloadsState(isLoading: true,optonFailureSuccess: None(),downloads: []);
  }
}
