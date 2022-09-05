

import 'package:freezed_annotation/freezed_annotation.dart';
part 'downlod.freezed.dart';
part 'downlod.g.dart';
@freezed
class Download with _$Download{
  const factory Download({
   @JsonKey(name: "poster_path") required String ?posterPath,
    @JsonKey(name: "name") required String ?title
  }) = _Download;

  factory Download.fromJson(Map<String, dynamic> json) => _$DownloadFromJson(json);
}