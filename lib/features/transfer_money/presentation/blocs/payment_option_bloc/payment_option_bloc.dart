import 'package:coin_stack/features/card/domain/models/payment_option.dart';
import 'package:coin_stack/features/card/domain/repos/card_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

enum PuroseOfTransfer { personal, payment }

PaymentOption get wallet => PaymentOption(
  id: 'id',
  name: 'Wallet',
  optionType: PaymentOptionType.wallet,
  isActive: true,
  msg: '',
);

@injectable
class PaymentOptionBloc extends Cubit<List<PaymentOption>> {
  final CardRepo _transferRepo;

  PaymentOptionBloc(this._transferRepo) : super([wallet]);

  getList() async {
    final res = await _transferRepo.fetchPayOptions();

    res.fold((l) {}, (r) {
      emit(state + r);
    });
  }
}
