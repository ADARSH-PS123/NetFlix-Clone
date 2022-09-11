import 'package:dartz/dartz.dart';
import 'package:flix/domain/core/mainFailures.dart';
import 'package:flix/domain/hot&new/models/hot/hot.dart';


abstract class IHotRepo {
  Future<Either<MainFailure, Hot>> getHotFiles();
}
