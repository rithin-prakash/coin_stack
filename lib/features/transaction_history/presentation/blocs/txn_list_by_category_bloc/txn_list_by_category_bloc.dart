import 'package:coin_stack/features/transaction_history/domain/models/transaction_category.dart';
import 'package:coin_stack/features/transaction_history/domain/models/txn_history_by_category_request.dart';
import 'package:coin_stack/features/transaction_history/domain/repos/txn_history_repo.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_list_by_category_bloc/txn_list_by_category_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class TxnListByCategoryBloc extends Cubit<TxnListByCategoryState> {
  final TxnHistoryRepo _repo;

  TxnListByCategoryBloc(this._repo) : super(TxnListByCategoryState.initial());

  loadList(TransactionCategory category) async {
    emit(TxnListByCategoryState.loading());

    final res = await _repo.loadTxnHistoryByCategory(
      TxnHistoryByCategoryRequest(category: category, month: '', year: ''),
    );

    res.fold(
      (l) => emit(TxnListByCategoryState.failed(l)),
      (r) => emit(TxnListByCategoryState.loaded(r)),
    );
  }
}
