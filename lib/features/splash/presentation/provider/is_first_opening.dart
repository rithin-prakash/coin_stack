import 'package:coin_stack/features/splash/data/splash_repo_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_first_opening.g.dart';

@riverpod
Future<bool> isFirstOpening(Ref ref) async {
  var res = await ref.read(splashRepoProvider).isOpeningFirstTime();

  return res.fold((_) => false, (r) => r);
}
