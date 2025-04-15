import 'package:coin_stack/features/transfer_money/domain/models/payment_option.dart';
import 'package:coin_stack/features/transfer_money/domain/repos/transfer_repo.dart';
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
  final TransferRepo _transferRepo;

  PaymentOptionBloc(this._transferRepo) : super([wallet]);

  getList() async {
    final res = await _transferRepo.fetchPayOptions();

    res.fold((l) {}, (r) {
      emit(state + r);
    });
  }
}
