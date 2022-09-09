import 'package:dartz/dartz.dart';
import 'package:flix/domain/core/mainFailures.dart';
import 'package:flix/domain/downloads/models/downlod.dart';

abstract class DownloadRepo {
  Future<Either<MainFailure, List<Download>>> getDownloadImages();
}
