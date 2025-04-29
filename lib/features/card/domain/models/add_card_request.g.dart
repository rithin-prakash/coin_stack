// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_card_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddCardRequest _$AddCardRequestFromJson(Map<String, dynamic> json) =>
    _AddCardRequest(
      cardNumber: json['cardNumber'] as String,
      expYear: json['expYear'] as String,
      expMonth: json['expMonth'] as String,
      cvv: json['cvv'] as String,
      fullname: json['fullname'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$AddCardRequestToJson(_AddCardRequest instance) =>
    <String, dynamic>{
      'cardNumber': instance.cardNumber,
      'expYear': instance.expYear,
      'expMonth': instance.expMonth,
      'cvv': instance.cvv,
      'fullname': instance.fullname,
      'email': instance.email,
    };
