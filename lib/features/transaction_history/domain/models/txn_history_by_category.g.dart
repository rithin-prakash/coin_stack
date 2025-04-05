// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'txn_history_by_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TxnHistoryByCategory _$TxnHistoryByCategoryFromJson(
  Map<String, dynamic> json,
) => _TxnHistoryByCategory(
  cateId: json['cateId'] as String,
  amount: (json['amount'] as num).toDouble(),
);

Map<String, dynamic> _$TxnHistoryByCategoryToJson(
  _TxnHistoryByCategory instance,
) => <String, dynamic>{'cateId': instance.cateId, 'amount': instance.amount};
