import 'package:coin_stack/core/utls/failure.dart';
import 'package:dartz/dartz.dart';

abstract interface class RemoteApi {
  Future<Either<Failure, dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParam,
  });

  Future<Either<Failure, dynamic>> post(
    String path, {
    Map<String, dynamic>? queryParam,
    Map<String, dynamic>? data,
  });

  Future<Either<Failure, dynamic>> put(
    String path, {
    Map<String, dynamic>? queryParam,
    Map<String, dynamic>? data,
  });

  Future<Either<Failure, dynamic>> patch(
    String path, {
    Map<String, dynamic>? queryParam,
    Map<String, dynamic>? data,
  });

  Future<Either<Failure, dynamic>> delete(
    String path, {
    Map<String, dynamic>? queryParam,
    Map<String, dynamic>? data,
  });
}
