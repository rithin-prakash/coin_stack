import 'package:coin_stack/features/transaction_history/domain/models/transaction_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'txn_history_category_request.freezed.dart';
part 'txn_history_category_request.g.dart';

@freezed
abstract class TxnHistoryCategoryRequest with _$TxnHistoryCategoryRequest {
  const factory TxnHistoryCategoryRequest({
    @TxnCategoryConverter() required TransactionCategory category,
  }) = _TxnHistoryCategoryRequest;

  factory TxnHistoryCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$TxnHistoryCategoryRequestFromJson(json);
}
