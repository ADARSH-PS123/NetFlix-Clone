// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResp _$SearchRespFromJson(Map<String, dynamic> json) => SearchResp(
      results: (json['results'] as List<dynamic>)
          .map((e) => SearchResultData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchRespToJson(SearchResp instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

SearchResultData _$SearchResultDataFromJson(Map<String, dynamic> json) =>
    SearchResultData(
      id: json['id'] as String,
      title: json['original_title'] as String,
      posterPath: json['poster_path'] as String,
    );

Map<String, dynamic> _$SearchResultDataToJson(SearchResultData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.title,
      'poster_path': instance.posterPath,
    };