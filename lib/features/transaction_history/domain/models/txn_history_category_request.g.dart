// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'txn_history_category_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TxnHistoryCategoryRequest _$TxnHistoryCategoryRequestFromJson(
  Map<String, dynamic> json,
) => _TxnHistoryCategoryRequest(
  category: const TxnCategoryConverter().fromJson(
    (json['category'] as num).toInt(),
  ),
);

Map<String, dynamic> _$TxnHistoryCategoryRequestToJson(
  _TxnHistoryCategoryRequest instance,
) => <String, dynamic>{
  'category': const TxnCategoryConverter().toJson(instance.category),
};
