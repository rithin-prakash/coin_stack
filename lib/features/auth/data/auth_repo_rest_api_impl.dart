import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/auth/domain/models/app_settings.dart';
import 'package:coin_stack/features/auth/domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepo)
class AuthRepoRestApiImpl implements AuthRepo {
  @override
  Future<Either<Failure, bool>> isUserLoggedIn() async {
    await Future.delayed(Duration(seconds: 2));

    return Right(true);
  }

  @override
  Future<Either<Failure, AppSettings>> loadAppSettings() async {
    await Future.delayed(Duration(seconds: 2));

    return Left(ServerFailure(message: 'message'));
    // return Right(AppSettings(minVersion: '0.0.1'));
  }
}
