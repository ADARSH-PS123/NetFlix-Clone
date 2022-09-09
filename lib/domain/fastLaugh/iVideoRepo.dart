import 'package:dartz/dartz.dart';
import 'package:flix/domain/core/mainFailures.dart';
import 'package:flix/domain/fastLaugh/models/videos/videos.dart';

abstract class IvideoRepo {
  Future<Either<MainFailure, Videos>> getVodeos();
}
