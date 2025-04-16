// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionItem _$TransactionItemFromJson(Map<String, dynamic> json) =>
    _TransactionItem(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      completedTime: DateTime.parse(json['completedTime'] as String),
      amount: (json['amount'] as num).toDouble(),
      category: const TxnCategoryConverter().fromJson(
        (json['category'] as num).toInt(),
      ),
      url: json['url'] as String,
    );

Map<String, dynamic> _$TransactionItemToJson(_TransactionItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'completedTime': instance.completedTime.toIso8601String(),
      'amount': instance.amount,
      'category': const TxnCategoryConverter().toJson(instance.category),
      'url': instance.url,
    };
