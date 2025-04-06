import 'package:coin_stack/features/transfer_money/domain/models/connected_profile.dart';
import 'package:coin_stack/features/transfer_money/domain/models/payment_option.dart';
import 'package:coin_stack/features/transfer_money/domain/models/send_money_request.dart';
import 'package:coin_stack/features/transfer_money/domain/repos/transfer_repo.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/payment_option_bloc/payment_option_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/send_money_bloc/send_money_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SendMoneyBloc extends Cubit<SendMoneyState> {
  final TransferRepo _repo;

  SendMoneyBloc(this._repo) : super(SendMoneyState.initial());

  sendMoney(
    ConnectedProfile profile,
    PuroseOfTransfer purposeOfTransfer,
    PaymentOption paymentOption,
    String v,
  ) async {
    emit(SendMoneyState.loading());

    final req = SendMoneyRequest(
      amount: double.parse(v),
      payOption: paymentOption,
      purposeOfTransfer: purposeOfTransfer,
      receiver: profile,
    );

    final res = await _repo.sendMoney(req);

    res.fold(
      (l) => SendMoneyState.failure(l),
      (r) => emit(SendMoneyState.loaded(r)),
    );
  }
}
