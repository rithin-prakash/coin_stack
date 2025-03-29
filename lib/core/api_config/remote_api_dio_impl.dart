import 'package:coin_stack/core/api_config/remote_api.dart';
import 'package:coin_stack/core/utls/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_api_dio_impl.g.dart';

@Riverpod(keepAlive: true)
RemoteApi remoteApi(Ref red) => RemoteApiDioImpl();

class RemoteApiDioImpl implements RemoteApi {
  @override
  Future<Either<Failure, dynamic>> delete(
    String path, {
    Map<String, dynamic>? queryParam,
    Map<String, dynamic>? data,
  }) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParam,
  }) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, dynamic>> patch(
    String path, {
    Map<String, dynamic>? queryParam,
    Map<String, dynamic>? data,
  }) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, dynamic>> post(
    String path, {
    Map<String, dynamic>? queryParam,
    Map<String, dynamic>? data,
  }) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, dynamic>> put(
    String path, {
    Map<String, dynamic>? queryParam,
    Map<String, dynamic>? data,
  }) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
