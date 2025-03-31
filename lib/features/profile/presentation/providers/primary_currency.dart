import 'package:coin_stack/features/profile/domain/models/currency.dart';
import 'package:coin_stack/features/profile/presentation/providers/supported_currency.dart';
import 'package:coin_stack/features/profile/presentation/providers/user_profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'primary_currency.g.dart';

@Riverpod(keepAlive: true)
Future<Currency> primaryCurrency(Ref ref) async {
  final user = await ref.watch(userProfileProvider.future);
  final curList = await ref.read(supportedCurrenciesProvider.future);

  late Currency c;

  c = curList.firstWhere((e) => user.primaryCurr == e);

  return c;
}
