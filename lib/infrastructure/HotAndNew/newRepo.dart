import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flix/domain/core/apiEndPoints.dart';
import 'package:flix/domain/core/mainFailures.dart';
import 'package:flix/domain/hot&new/inewRepo.dart';
import 'package:flix/domain/hot&new/models/new/new.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: INewRepo)
class NewRepo implements INewRepo {
  @override
  Future<Either<MainFailure, New>> getNewFiles() async {
    try {
      final Response response = await Dio(BaseOptions()).get(ApiEndPoints.tv);
      print(response.data.toString() + "=============================");
      if (response.statusCode == 200 || response.statusCode == 201) {
        print("+++++++++++++++++++++++++++sucess");
        final result = New.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      print(e.toString() + "----------------------=Catch Block");
      return const Left(MainFailure.clinrFailure());
    }
  }
}
