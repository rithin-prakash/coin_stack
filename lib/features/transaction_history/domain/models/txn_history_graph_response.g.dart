// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'txn_history_graph_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TxnHistoryGraphResponse _$TxnHistoryGraphResponseFromJson(
  Map<String, dynamic> json,
) => _TxnHistoryGraphResponse(
  category: const TxnCategoryConverter().fromJson(
    (json['category'] as num).toInt(),
  ),
  date: const DateTimeConverter().fromJson(json['date'] as String),
  data:
      (json['data'] as List<dynamic>)
          .map((e) => TxnHistoryGraphData.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$TxnHistoryGraphResponseToJson(
  _TxnHistoryGraphResponse instance,
) => <String, dynamic>{
  'category': const TxnCategoryConverter().toJson(instance.category),
  'date': const DateTimeConverter().toJson(instance.date),
  'data': instance.data,
};

_TxnHistoryGraphData _$TxnHistoryGraphDataFromJson(Map<String, dynamic> json) =>
    _TxnHistoryGraphData(
      x: (json['x'] as num).toInt(),
      y: (json['y'] as num).toInt(),
    );

Map<String, dynamic> _$TxnHistoryGraphDataToJson(
  _TxnHistoryGraphData instance,
) => <String, dynamic>{'x': instance.x, 'y': instance.y};
