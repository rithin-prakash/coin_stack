// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_money_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestMoneyRequest _$RequestMoneyRequestFromJson(Map<String, dynamic> json) =>
    _RequestMoneyRequest(
      requestReceivingTo: ConnectedProfile.fromJson(
        json['requestReceivingTo'] as Map<String, dynamic>,
      ),
      amount: (json['amount'] as num).toDouble(),
      payOption: PaymentOption.fromJson(
        json['payOption'] as Map<String, dynamic>,
      ),
      purposeOfTransfer: $enumDecode(
        _$PuroseOfTransferEnumMap,
        json['purposeOfTransfer'],
      ),
    );

Map<String, dynamic> _$RequestMoneyRequestToJson(
  _RequestMoneyRequest instance,
) => <String, dynamic>{
  'requestReceivingTo': instance.requestReceivingTo,
  'amount': instance.amount,
  'payOption': instance.payOption,
  'purposeOfTransfer': _$PuroseOfTransferEnumMap[instance.purposeOfTransfer]!,
};

const _$PuroseOfTransferEnumMap = {
  PuroseOfTransfer.personal: 'personal',
  PuroseOfTransfer.payment: 'payment',
};
