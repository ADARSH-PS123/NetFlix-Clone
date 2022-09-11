import 'package:dio/dio.dart';
import 'package:flix/domain/core/apiEndPoints.dart';

import 'package:flix/domain/core/mainFailures.dart';
import 'package:dartz/dartz.dart';
import 'package:flix/domain/fastLaugh/iVideoRepo.dart';
import 'package:flix/domain/fastLaugh/models/videos/videos.dart';
import 'package:injectable/injectable.dart';
import 'dart:convert' as convert;

@LazySingleton(as: IvideoRepo)
class VideoRepo implements IvideoRepo {
  @override
  Future<Either<MainFailure, Videos>> getVodeos() async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.videos,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = convert.jsonDecode(response.data);

        final result = Videos.fromJson(data);

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clinrFailure());
    }
  }
}
