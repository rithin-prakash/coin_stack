import 'package:coin_stack/features/profile/domain/models/currency.dart';
import 'package:coin_stack/features/profile/domain/repos/user_profile_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SupportCurrencyListCubit extends Cubit<List<Currency>> {
  final UserProfileRepo _userProfileRepo;

  SupportCurrencyListCubit(this._userProfileRepo) : super([]);

  getSupportedList() async {
    final res = await _userProfileRepo.userSupportedCurrencies();

    res.fold((_) => emit([]), (r) => emit(r));
  }
}
