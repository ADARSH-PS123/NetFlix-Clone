import 'package:json_annotation/json_annotation.dart';

part 'videos.g.dart';

@JsonSerializable()
class Videos {
  List<Category> categories;

  Videos({required this.categories});

  factory Videos.fromJson(Map<String, dynamic> json) {
    return _$VideosFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VideosToJson(this);
}

@JsonSerializable()
class Category {
  List<Video>? videos;

  Category({this.videos});

  factory Category.fromJson(Map<String, dynamic> json) {
    return _$CategoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class Video {
  List<String>? sources;

  String? thumb;
  String? title;

  Video({
    this.sources,
    this.thumb,
    this.title,
  });

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  Map<String, dynamic> toJson() => _$VideoToJson(this);
}
