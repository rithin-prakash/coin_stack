// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_money_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendMoneyRequest _$SendMoneyRequestFromJson(
  Map<String, dynamic> json,
) => _SendMoneyRequest(
  receiver: ConnectedProfile.fromJson(json['receiver'] as Map<String, dynamic>),
  amount: (json['amount'] as num).toDouble(),
  payOption: PaymentOption.fromJson(json['payOption'] as Map<String, dynamic>),
  purposeOfTransfer: $enumDecode(
    _$PuroseOfTransferEnumMap,
    json['purposeOfTransfer'],
  ),
);

Map<String, dynamic> _$SendMoneyRequestToJson(
  _SendMoneyRequest instance,
) => <String, dynamic>{
  'receiver': instance.receiver,
  'amount': instance.amount,
  'payOption': instance.payOption,
  'purposeOfTransfer': _$PuroseOfTransferEnumMap[instance.purposeOfTransfer]!,
};

const _$PuroseOfTransferEnumMap = {
  PuroseOfTransfer.personal: 'personal',
  PuroseOfTransfer.payment: 'payment',
};
