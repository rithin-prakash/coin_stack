import 'package:coin_stack/features/transaction_history/domain/models/transaction_category.dart';
import 'package:coin_stack/features/transfer_money/domain/models/send_money_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'txn_history_graph_request.freezed.dart';
part 'txn_history_graph_request.g.dart';

@freezed
abstract class TxnHistoryGraphRequest with _$TxnHistoryGraphRequest {
  const factory TxnHistoryGraphRequest({
    @TxnCategoryConverter() required TransactionCategory category,
    @DateTimeConverter() required DateTime date,
  }) = _TxnHistoryGraphRequest;

  factory TxnHistoryGraphRequest.fromJson(Map<String, dynamic> json) =>
      _$TxnHistoryGraphRequestFromJson(json);
}
