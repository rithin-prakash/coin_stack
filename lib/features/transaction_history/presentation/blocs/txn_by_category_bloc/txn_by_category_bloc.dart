import 'package:coin_stack/features/transaction_history/domain/models/txn_history_category_request.dart';
import 'package:coin_stack/features/transaction_history/domain/repos/txn_history_repo.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_by_category_bloc/txn_by_category_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

enum TransactionCategory { spending, income, bills, saving }

@injectable
class TxnByCategoryBloc extends Cubit<TxnByCategoryState> {
  final TxnHistoryRepo _repo;

  TxnByCategoryBloc(this._repo) : super(TxnByCategoryState.initial());

  loadHistory(TransactionCategory category) async {
    emit(TxnByCategoryState.loading());

    final res = await _repo.loadTxnHistory(
      TxnHistoryCategoryRequest(category: category),
    );

    res.fold(
      (l) => emit(TxnByCategoryState.failed(l)),
      (r) => emit(TxnByCategoryState.loaded(r)),
    );
  }
}
