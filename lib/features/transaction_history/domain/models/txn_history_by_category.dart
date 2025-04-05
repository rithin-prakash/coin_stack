import 'package:freezed_annotation/freezed_annotation.dart';

part 'txn_history_by_category.freezed.dart';
part 'txn_history_by_category.g.dart';

@freezed
abstract class TxnHistoryByCategory with _$TxnHistoryByCategory {
  const factory TxnHistoryByCategory({
    required String cateId,
    required double amount,
  }) = _TxnHistoryByCategory;

  factory TxnHistoryByCategory.fromJson(Map<String, dynamic> json) =>
      _$TxnHistoryByCategoryFromJson(json);
}
