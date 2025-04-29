import 'package:coin_stack/features/transaction_history/domain/models/transaction_category.dart';
import 'package:coin_stack/features/transfer_money/domain/models/send_money_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'txn_history_graph_response.freezed.dart';
part 'txn_history_graph_response.g.dart';

@freezed
abstract class TxnHistoryGraphResponse with _$TxnHistoryGraphResponse {
  const factory TxnHistoryGraphResponse({
    @TxnCategoryConverter() required TransactionCategory category,
    @DateTimeConverter() required DateTime date,
    required List<TxnHistoryGraphData> data,
  }) = _TxnHistoryGraphResponse;

  factory TxnHistoryGraphResponse.fromJson(Map<String, dynamic> json) =>
      _$TxnHistoryGraphResponseFromJson(json);
}

@freezed
abstract class TxnHistoryGraphData with _$TxnHistoryGraphData {
  const factory TxnHistoryGraphData({required int x, required int y}) =
      _TxnHistoryGraphData;

  factory TxnHistoryGraphData.fromJson(Map<String, dynamic> json) =>
      _$TxnHistoryGraphDataFromJson(json);
}
