import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/auth/domain/models/app_settings.dart';
import 'package:dartz/dartz.dart';

abstract interface class AuthRepo {
  Future<Either<Failure, bool>> isUserLoggedIn();
  Future<Either<Failure, AppSettings>> loadAppSettings();
}
