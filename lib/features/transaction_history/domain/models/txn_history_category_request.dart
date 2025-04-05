import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_by_category_bloc/txn_by_category_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'txn_history_category_request.freezed.dart';
part 'txn_history_category_request.g.dart';

@freezed
abstract class TxnHistoryCategoryRequest with _$TxnHistoryCategoryRequest {
  const factory TxnHistoryCategoryRequest({
    required TransactionCategory category,
  }) = _TxnHistoryCategoryRequest;

  factory TxnHistoryCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$TxnHistoryCategoryRequestFromJson(json);
}
