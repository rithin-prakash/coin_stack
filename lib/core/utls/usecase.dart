import 'package:coin_stack/core/utls/failure.dart';
import 'package:dartz/dartz.dart';

abstract interface class Usecase<Type, Param> {
  Future<Either<Failure, Type>> call();
}
