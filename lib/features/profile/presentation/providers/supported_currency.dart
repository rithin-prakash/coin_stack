import 'package:coin_stack/features/profile/data/user_profile_repo_rest_api_impl.dart';
import 'package:coin_stack/features/profile/domain/models/currency.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'supported_currency.g.dart';

@Riverpod(keepAlive: true)
Future<List<Currency>> supportedCurrencies(Ref ref) async {
  final res = await ref.read(userProfileRepoProvider).userSupportedCurrencies();

  return res.fold((l) => [], (r) => r);
}
