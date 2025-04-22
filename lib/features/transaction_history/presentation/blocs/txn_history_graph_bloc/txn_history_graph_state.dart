import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/transaction_history/domain/models/txn_history_graph_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'txn_history_graph_state.freezed.dart';

@freezed
abstract class TxnHistoryGraphState with _$TxnHistoryGraphState {
  const factory TxnHistoryGraphState.initial() = TxnHistoryGraphInitial;
  const factory TxnHistoryGraphState.loading() = TxnHistoryGraphLoading;
  const factory TxnHistoryGraphState.loaded(TxnHistoryGraphResponse res) =
      TxnHistoryGraphLoaded;
  const factory TxnHistoryGraphState.failed(Failure failure) =
      TxnHistoryGraphFailed;
}
