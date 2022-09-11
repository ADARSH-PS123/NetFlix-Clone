import 'package:flix/domain/core/strings.dart';
import 'package:flix/infrastructure/apiKey.dart';

class ApiEndPoints {
  static const downloads = "${baseUrl}trending/all/day?api_key=$apiKey";
  static const search =
      "${baseUrl}search/movie?api_key=$apiKey&language=en-US&page=1&include_adult=false&query=";
  static const videos =
      "https://gist.githubusercontent.com/deepakpk009/99fd994da714996b296f11c3c371d5ee/raw/28c4094ae48892efb71d5122c1fd72904088439b";
  static const vid =
      'https://gist.github.com/deepakpk009/99fd994da714996b296f11c3c371d5ee';

  static const discover =
      '${baseUrl}discover/movie?api_key=${apiKey}&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate';
  static const tv =
      '${baseUrl}discover/tv?api_key=${apiKey}&language=en-US&sort_by=popularity.desc&page=1&timezone=America%2FNew_York&include_null_first_air_dates=false&with_watch_monetization_types=flatrate&with_status=0&with_type=0';
}
