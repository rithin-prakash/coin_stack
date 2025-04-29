import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/splash/domain/repos/splash_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SplashRepo)
class SplashRepoImpl implements SplashRepo {
  @override
  Future<Either<Failure, bool>> isOpeningFirstTime() async {
    await Future.delayed(Duration(seconds: 1));
    return Right(false);
  }
}
