import 'package:coin_stack/features/setup_account/domain/models/country.dart';
import 'package:coin_stack/features/setup_account/domain/repos/edit_acc_info_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CountryListBloc extends Cubit<List<Country>> {
  final EditAccInfoRepo _repo;
  CountryListBloc(this._repo) : super([]);

  getCountries() async {
    final res = await _repo.countriesList();

    return res.fold((l) => [], (r) => r);
  }
}
