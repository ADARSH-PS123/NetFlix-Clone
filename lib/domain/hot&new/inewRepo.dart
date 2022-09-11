import 'package:dartz/dartz.dart';
import 'package:flix/domain/core/mainFailures.dart';
import 'package:flix/domain/hot&new/models/new/new.dart';


abstract class INewRepo {
  Future<Either<MainFailure, New>> getNewFiles();
}
