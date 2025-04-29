import 'package:coin_stack/features/transaction_history/domain/models/transaction_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'txn_history_by_category_request.freezed.dart';
part 'txn_history_by_category_request.g.dart';

@freezed
abstract class TxnHistoryByCategoryRequest with _$TxnHistoryByCategoryRequest {
  const factory TxnHistoryByCategoryRequest({
    @TxnCategoryConverter() required TransactionCategory category,
    required String month,
    required String year,
  }) = _TxnHistoryByCategoryRequest;

  factory TxnHistoryByCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$TxnHistoryByCategoryRequestFromJson(json);
}
