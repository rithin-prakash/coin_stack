// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentOption _$PaymentOptionFromJson(Map<String, dynamic> json) =>
    _PaymentOption(
      id: json['id'] as String,
      name: json['name'] as String,
      optionType: const PaymentOptionTypeConverter().fromJson(
        json['optionType'] as String,
      ),
      isActive: json['isActive'] as bool,
      msg: json['msg'] as String,
    );

Map<String, dynamic> _$PaymentOptionToJson(
  _PaymentOption instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'optionType': const PaymentOptionTypeConverter().toJson(instance.optionType),
  'isActive': instance.isActive,
  'msg': instance.msg,
};
