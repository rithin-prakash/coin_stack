import 'package:coin_stack/features/transaction_history/domain/models/transaction_category.dart';
import 'package:coin_stack/features/transaction_history/domain/models/txn_history_category_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_item.freezed.dart';
part 'transaction_item.g.dart';

@freezed
abstract class TransactionItem with _$TransactionItem {
  const factory TransactionItem({
    required int id,
    required String title,
    required DateTime completedTime,
    required double amount,
    @TxnCategoryConverter() required TransactionCategory category,
    required String url,
  }) = _TransactionItem;

  factory TransactionItem.fromJson(Map<String, dynamic> json) =>
      _$TransactionItemFromJson(json);
}
