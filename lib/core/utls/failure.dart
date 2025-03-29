import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  abstract String message;
}

// abstract class ServerFailure extends Failure {
//   factory ServerFailure({required String message}) = _ServerFailure;
// }
