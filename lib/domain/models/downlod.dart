import 'package:json_annotation/json_annotation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'downlod.freezed.dart';
part 'downlod.g.dart';
@freezed
class Download with _$Download{
  const factory Download({
   @JsonKey(name: "poster_path") required String ?posterPath
  }) = _Download;

  factory Download.fromJson(Map<String, dynamic> json) => _$DownloadFromJson(json);
}