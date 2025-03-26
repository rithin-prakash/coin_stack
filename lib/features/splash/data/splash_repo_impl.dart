import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/splash/domain/repos/splash_repo.dart';
import 'package:dartz/dartz.dart';

class SplashRepoImpl implements SplashRepo {
  @override
  Future<Either<Failure, bool>> isOpeningFirstTime() async {
    return Right(true);
  }
}
