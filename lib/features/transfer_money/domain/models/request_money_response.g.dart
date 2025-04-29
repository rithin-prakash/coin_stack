// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_money_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestMoneyResponse _$RequestMoneyResponseFromJson(
  Map<String, dynamic> json,
) => _RequestMoneyResponse(
  id: json['id'] as String,
  initiatedTime: const DateTimeConverter().fromJson(
    json['initiatedTime'] as String,
  ),
  status: const TxnSendStatusTypeConverter().fromJson(json['status'] as String),
  requestRecievedTo: ConnectedProfile.fromJson(
    json['requestRecievedTo'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$RequestMoneyResponseToJson(
  _RequestMoneyResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'initiatedTime': const DateTimeConverter().toJson(instance.initiatedTime),
  'status': const TxnSendStatusTypeConverter().toJson(instance.status),
  'requestRecievedTo': instance.requestRecievedTo,
};
