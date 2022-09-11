import 'package:dio/dio.dart';
import 'package:flix/domain/core/apiEndPoints.dart';
import 'package:flix/domain/core/mainFailures.dart';
import 'package:dartz/dartz.dart';
import 'package:flix/domain/hot&new/models/hot/hot.dart';

import 'package:injectable/injectable.dart';

import '../../domain/hot&new/ihotRepo.dart';

@LazySingleton(as: IHotRepo)
class HotRepo implements IHotRepo {
  @override
  Future<Either<MainFailure, Hot>> getHotFiles() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.discover);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("+++++++++++++++++++++++++++sucess");
        final result = Hot.fromJson(response.data);
        return Right(result);
      } else {
        return Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print(e.toString() + "----------------------=Catch Block");
      return Left(MainFailure.clinrFailure());
    }
  }
}
