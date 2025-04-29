import 'package:coin_stack/core/utls/failure.dart';
import 'package:dartz/dartz.dart';

abstract class SplashRepo {
  Future<Either<Failure, bool>> isOpeningFirstTime();
}
