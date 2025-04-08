// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionDetailsResponse _$TransactionDetailsResponseFromJson(
  Map<String, dynamic> json,
) => _TransactionDetailsResponse(
  id: json['id'] as String,
  completedTime: _$JsonConverterFromJson<String, DateTime>(
    json['completedTime'],
    const DateTimeConverter().fromJson,
  ),
  initiatedTime: const DateTimeConverter().fromJson(
    json['initiatedTime'] as String,
  ),
  status: const TxnStatusTypeConverter().fromJson(json['status'] as String),
  sendProfile: ConnectedProfile.fromJson(
    json['sendProfile'] as Map<String, dynamic>,
  ),
  receiveProfile: ConnectedProfile.fromJson(
    json['receiveProfile'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$TransactionDetailsResponseToJson(
  _TransactionDetailsResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'completedTime': _$JsonConverterToJson<String, DateTime>(
    instance.completedTime,
    const DateTimeConverter().toJson,
  ),
  'initiatedTime': const DateTimeConverter().toJson(instance.initiatedTime),
  'status': const TxnStatusTypeConverter().toJson(instance.status),
  'sendProfile': instance.sendProfile,
  'receiveProfile': instance.receiveProfile,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
