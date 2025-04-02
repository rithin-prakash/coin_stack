import 'package:coin_stack/core/api_config/remote_api.dart';
import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/profile/domain/models/currency.dart';
import 'package:coin_stack/features/profile/domain/models/user.dart';
import 'package:coin_stack/features/profile/domain/repos/user_profile_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserProfileRepo)
class UserProfileRepoRestApiImpl implements UserProfileRepo {
  final RemoteApi _remoteApi;

  UserProfileRepoRestApiImpl(this._remoteApi);
  @override
  Future<Either<Failure, User>> fetchUserProfile() async {
    // return Left(ServerFailure(message: ''));
    final u = {
      'phone': '232333223',
      'phoneCode': '+91',
      'phoneVerified': 'success',
      'primaryCurrency': {'name': 'US Dollor', 'code': 'USD', 'flagCode': 'us'},
    };
    return Right(User.fromJson(u));
  }

  @override
  Future<Either<Failure, List<Currency>>> userSupportedCurrencies() async {
    await Future.delayed(Duration(seconds: 1));

    var d = [
      {'name': 'India Rupee', 'code': 'INR', 'flagCode': 'in'},
      {'name': 'US Dollor', 'code': 'USD', 'flagCode': 'us'},
    ];
    return Right(List<Currency>.from(d.map((e) => Currency.fromJson(e))));
  }
}
