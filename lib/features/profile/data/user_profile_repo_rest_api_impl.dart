import 'package:coin_stack/core/api_config/remote_api.dart';
import 'package:coin_stack/core/api_config/remote_api_dio_impl.dart';
import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/profile/domain/models/user.dart';
import 'package:coin_stack/features/profile/domain/repos/user_profile_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_profile_repo_rest_api_impl.g.dart';

@riverpod
UserProfileRepo userProfileRepo(Ref ref) =>
    UserProfileRepoRestApiImpl(ref.read(remoteApiProvider));

class UserProfileRepoRestApiImpl implements UserProfileRepo {
  final RemoteApi _remoteApi;

  UserProfileRepoRestApiImpl(this._remoteApi);
  @override
  Future<Either<Failure, User>> fetchUserProfile() async {
    final u = {'phone': '232333223', 'phoneCode': '+91', 'phoneVerified': true};
    return Right(User.fromJson(u));
  }
}
