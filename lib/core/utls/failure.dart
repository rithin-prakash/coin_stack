import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  @override
  abstract final String message;

  @override
  abstract final int? code;
}

@freezed
abstract class ServerFailure with _$ServerFailure implements Failure {
  factory ServerFailure({required String message, int? code}) = _ServerFailure;
}
