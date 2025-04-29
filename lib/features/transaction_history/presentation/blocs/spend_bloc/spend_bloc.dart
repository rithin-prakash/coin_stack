import 'package:coin_stack/features/transaction_history/domain/models/spend_request.dart';
import 'package:coin_stack/features/transaction_history/domain/repos/txn_history_repo.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/spend_bloc/spend_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SpendBloc extends Cubit<SpendState> {
  final TxnHistoryRepo _repo;

  SpendBloc(this._repo) : super(SpendState.initial());

  loadSpend(DateTime state) async {
    emit(SpendState.loading());

    final res = await _repo.loadSpend(SpendRequest(date: state));

    res.fold(
      (l) => emit(SpendState.failed(l)),
      (r) => emit(SpendState.loaded(r)),
    );
  }
}
