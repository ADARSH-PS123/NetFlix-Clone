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
}
