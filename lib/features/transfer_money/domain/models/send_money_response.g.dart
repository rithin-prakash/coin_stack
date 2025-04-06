// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_money_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendMoneyResponse _$SendMoneyResponseFromJson(Map<String, dynamic> json) =>
    _SendMoneyResponse(
      id: json['id'] as String,
      completedTime:
          json['completedTime'] == null
              ? null
              : DateTime.parse(json['completedTime'] as String),
      initiatedTime: DateTime.parse(json['initiatedTime'] as String),
      status: const TxnSendStatusTypeConverter().fromJson(
        json['status'] as String,
      ),
      sendProfile: ConnectedProfile.fromJson(
        json['sendProfile'] as Map<String, dynamic>,
      ),
      receiveProfile: ConnectedProfile.fromJson(
        json['receiveProfile'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$SendMoneyResponseToJson(_SendMoneyResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'completedTime': instance.completedTime?.toIso8601String(),
      'initiatedTime': instance.initiatedTime.toIso8601String(),
      'status': const TxnSendStatusTypeConverter().toJson(instance.status),
      'sendProfile': instance.sendProfile,
      'receiveProfile': instance.receiveProfile,
    };
