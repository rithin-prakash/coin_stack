import 'package:coin_stack/features/transaction_history/domain/models/transaction_category.dart';
import 'package:coin_stack/features/transaction_history/domain/models/txn_history_graph_request.dart';
import 'package:coin_stack/features/transaction_history/domain/repos/txn_history_repo.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_history_graph_bloc/txn_history_graph_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class TxnHistoryGraphBloc extends Cubit<TxnHistoryGraphState> {
  final TxnHistoryRepo _repo;
  TxnHistoryGraphBloc(this._repo) : super(TxnHistoryGraphState.initial());

  loadHistoryGraph(TransactionCategory cat, DateTime date) async {
    emit(TxnHistoryGraphState.loading());

    final res = await _repo.loadHistoryGraph(
      TxnHistoryGraphRequest(category: cat, date: date),
    );

    res.fold(
      (l) => emit(TxnHistoryGraphState.failed(l)),
      (r) => emit(TxnHistoryGraphState.loaded(r)),
    );
  }
}
