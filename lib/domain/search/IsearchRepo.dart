import 'package:dartz/dartz.dart';
import 'package:flix/domain/core/mainFailures.dart';
import 'package:flix/domain/search/models/search/Search.dart';


abstract class ISearchRepo {
Future<Either<MainFailure,SearchResp>>getSearchResults({required String query});
}