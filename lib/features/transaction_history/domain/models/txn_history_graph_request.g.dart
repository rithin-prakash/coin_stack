// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'txn_history_graph_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TxnHistoryGraphRequest _$TxnHistoryGraphRequestFromJson(
  Map<String, dynamic> json,
) => _TxnHistoryGraphRequest(
  category: const TxnCategoryConverter().fromJson(
    (json['category'] as num).toInt(),
  ),
  date: const DateTimeConverter().fromJson(json['date'] as String),
);

Map<String, dynamic> _$TxnHistoryGraphRequestToJson(
  _TxnHistoryGraphRequest instance,
) => <String, dynamic>{
  'category': const TxnCategoryConverter().toJson(instance.category),
  'date': const DateTimeConverter().toJson(instance.date),
};
