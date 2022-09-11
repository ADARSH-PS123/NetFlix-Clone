import 'package:dio/dio.dart';
import 'package:flix/domain/core/apiEndPoints.dart';
import 'package:flix/domain/core/mainFailures.dart';
import 'package:dartz/dartz.dart';
import 'package:flix/domain/downloads/downloadReop.dart';
import 'package:flix/domain/downloads/models/downlod.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(
    as: DownloadRepo) //converting into singlton ,2) @ block add @injectable and create a dependency injection function for initilizing getit and initialize the configureInjection function at the run app section

class Repo implements DownloadRepo {
  @override
  Future<Either<MainFailure, List<Download>>> getDownloadImages({ String page='&page=1'}) async {
    try {
      final Response response =
          await Dio(BaseOptions(sendTimeout: 4)).get(ApiEndPoints.downloads+page);

      if (response.statusCode == 200 || response.statusCode == 201) {
      
        final downloadList = (response.data['results'] as List).map((e) {
          return Download.fromJson(e);
        }).toList();

        return Right(downloadList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
     
      return const Left(MainFailure.clinrFailure());
    }
  }
}
