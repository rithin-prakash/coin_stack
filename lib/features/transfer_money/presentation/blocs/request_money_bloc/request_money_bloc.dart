import 'package:coin_stack/features/card/domain/models/payment_option.dart';
import 'package:coin_stack/features/transfer_money/domain/models/connected_profile.dart';
import 'package:coin_stack/features/transfer_money/domain/models/request_money_request.dart';
import 'package:coin_stack/features/transfer_money/domain/repos/transfer_repo.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/payment_option_bloc/payment_option_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/request_money_bloc/request_money_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class RequestMoneyBloc extends Cubit<RequestMoneyState> {
  final TransferRepo _repo;

  RequestMoneyBloc(this._repo) : super(RequestMoneyState.initial());

  requestMoney(
    ConnectedProfile profile,
    PuroseOfTransfer purposeOfTransfer,
    PaymentOption paymentOption,
    String v,
  ) async {
    emit(RequestMoneyState.loading());

    final req = RequestMoneyRequest(
      amount: double.parse(v),
      payOption: paymentOption,
      purposeOfTransfer: purposeOfTransfer,
      requestReceivingTo: profile,
    );

    final res = await _repo.requestMoney(req);

    res.fold(
      (l) => RequestMoneyState.failure(l),
      (r) => emit(RequestMoneyState.loaded(r)),
    );
  }
}
