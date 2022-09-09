import 'package:freezed_annotation/freezed_annotation.dart';
part 'mainFailures.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.clinrFailure() = _ClientFailure;
  const factory MainFailure.serverFailure() = _ServerFailure;
}
