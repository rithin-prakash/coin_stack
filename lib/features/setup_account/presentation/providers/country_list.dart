import 'package:coin_stack/features/setup_account/data/edit_account_info_repo_rest_api_impl.dart';
import 'package:coin_stack/features/setup_account/domain/models/country.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'country_list.g.dart';

@Riverpod(keepAlive: true)
Future<List<Country>> countryList(Ref ref) async {
  final res = await ref.read(editAccInfoRepoProvider).countriesList();

  return res.fold((l) => [], (r) => r);
}
