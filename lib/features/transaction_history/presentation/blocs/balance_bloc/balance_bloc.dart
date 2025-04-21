import 'package:coin_stack/features/transaction_history/domain/repos/txn_history_repo.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/balance_bloc/balance_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class BalanceBloc extends Cubit<BalanceState> {
  final TxnHistoryRepo _repo;

  BalanceBloc(this._repo) : super(BalanceState.initial());

  loadBalance() async {
    emit(BalanceState.loading());

    final res = await _repo.loadBalance();

    print("------------------------------------------------------");
    print(res);

    res.fold(
      (l) => emit(BalanceState.failed(l)),
      (r) => emit(BalanceState.loaded(r)),
    );
  }
}
