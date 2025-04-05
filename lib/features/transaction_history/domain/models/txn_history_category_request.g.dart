// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'txn_history_category_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TxnHistoryCategoryRequest _$TxnHistoryCategoryRequestFromJson(
  Map<String, dynamic> json,
) => _TxnHistoryCategoryRequest(
  category: $enumDecode(_$TransactionCategoryEnumMap, json['category']),
);

Map<String, dynamic> _$TxnHistoryCategoryRequestToJson(
  _TxnHistoryCategoryRequest instance,
) => <String, dynamic>{
  'category': _$TransactionCategoryEnumMap[instance.category]!,
};

const _$TransactionCategoryEnumMap = {
  TransactionCategory.spending: 'spending',
  TransactionCategory.income: 'income',
  TransactionCategory.bills: 'bills',
  TransactionCategory.saving: 'saving',
};
