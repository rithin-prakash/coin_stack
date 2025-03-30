import 'package:coin_stack/features/profile/data/user_profile_repo_rest_api_impl.dart';
import 'package:coin_stack/features/profile/domain/models/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_profile.g.dart';

@Riverpod(keepAlive: true)
Future<User> userProfile(Ref ref) async {
  final res = await ref.read(userProfileRepoProvider).fetchUserProfile();

  return res.fold((l) {
    throw l;
  }, (r) => r);
}
