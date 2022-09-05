import 'package:json_annotation/json_annotation.dart';


part 'Search.g.dart';
@JsonSerializable()
class SearchResp {
  /// The generated code assumes these values exist in JSON.
 @JsonKey(name: 'results') final List<SearchResultData>results;

  
  

  SearchResp({required this.results,});

  /// Connect the generated [_$SearchRespFromJson] function to the `fromJson`
  /// factory.
  factory SearchResp.fromJson(Map<String, dynamic> json) => _$SearchRespFromJson(json);

  /// Connect the generated [_$SearchResultToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SearchRespToJson(this);
}





@JsonSerializable()
class SearchResultData {
  /// The generated code assumes these values exist in JSON.
@JsonKey(name: 'id')   final String id ;
@JsonKey(name: 'original_title')   final String title ;
@JsonKey(name: 'poster_path')   final String posterPath ;

 

  SearchResultData({required this.id, required this.title, required this.posterPath});

  /// Connect the generated [_$SearchResultDataFromJson] function to the `fromJson`
  /// factory.
  factory SearchResultData.fromJson(Map<String, dynamic> json) => _$SearchResultDataFromJson(json);

  /// Connect the generated [_$SearchResultDataToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$SearchResultDataToJson(this);
}