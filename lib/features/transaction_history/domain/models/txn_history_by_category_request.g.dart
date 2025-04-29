// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'txn_history_by_category_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TxnHistoryByCategoryRequest _$TxnHistoryByCategoryRequestFromJson(
  Map<String, dynamic> json,
) => _TxnHistoryByCategoryRequest(
  category: const TxnCategoryConverter().fromJson(
    (json['category'] as num).toInt(),
  ),
  month: json['month'] as String,
  year: json['year'] as String,
);

Map<String, dynamic> _$TxnHistoryByCategoryRequestToJson(
  _TxnHistoryByCategoryRequest instance,
) => <String, dynamic>{
  'category': const TxnCategoryConverter().toJson(instance.category),
  'month': instance.month,
  'year': instance.year,
};
