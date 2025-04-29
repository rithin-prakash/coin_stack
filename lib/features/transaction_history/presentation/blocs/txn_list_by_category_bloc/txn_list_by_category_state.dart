import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/transaction_history/domain/models/transaction_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'txn_list_by_category_state.freezed.dart';

@freezed
abstract class TxnListByCategoryState with _$TxnListByCategoryState {
  const factory TxnListByCategoryState.initial() = TxnListByCategoryInitial;
  const factory TxnListByCategoryState.loading() = TxnListByCategoryLoading;
  const factory TxnListByCategoryState.loaded(List<TransactionItem> list) =
      TxnListByCategoryLoaded;
  const factory TxnListByCategoryState.failed(Failure failure) =
      TxnListByCategoryFailed;
}
