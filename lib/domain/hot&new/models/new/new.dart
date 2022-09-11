import 'package:json_annotation/json_annotation.dart';

part 'new.g.dart';

@JsonSerializable()
class New {
  int? page;
  List<Result> results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  New({this.page,required this.results, this.totalPages, this.totalResults});

  factory New.fromJson(Map<String, dynamic> json) => _$NewFromJson(json);

  Map<String, dynamic> toJson() => _$NewToJson(this);
}

@JsonSerializable()
class Result {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'first_air_date')
  String? firstAirDate;

 

  String? name;


  @JsonKey(name: 'original_language')
  String? originalLanguage;

  @JsonKey(name: 'original_name')
  String? originalName;

  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;



  Result({
    this.backdropPath,
    this.firstAirDate,


    this.name,

    this.originalLanguage,
    this.originalName,
    this.overview,

    this.posterPath,
 
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
