import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/profile/domain/models/user.dart';
import 'package:dartz/dartz.dart';

abstract interface class UserProfileRepo {
  Future<Either<Failure, User>> fetchUserProfile();
}
