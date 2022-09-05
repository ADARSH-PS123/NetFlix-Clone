

import 'package:flix/domain/core/strings.dart';
import 'package:flix/infrastructure/apiKey.dart';

class ApiEndPoints{
  static const downloads="${baseUrl}trending/all/day?api_key=$apiKey";
  static const search="${baseUrl}search/movie?api_key=$apiKey&language=en-US&page=1&include_adult=false&query=";
}