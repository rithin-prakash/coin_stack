import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/transaction_history/domain/models/txn_history_by_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'txn_by_category_state.freezed.dart';

@freezed
abstract class TxnByCategoryState with _$TxnByCategoryState {
  const factory TxnByCategoryState.initial() = TxnByCategoryInitial;
  const factory TxnByCategoryState.loading() = TxnByCategoryLoading;
  const factory TxnByCategoryState.loaded(TxnHistoryByCategory history) =
      TxnByCategoryLoaded;
  const factory TxnByCategoryState.failed(Failure failure) =
      TxnByCategoryFailed;
}
