// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_address_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EditAddressRequest _$EditAddressRequestFromJson(Map<String, dynamic> json) =>
    _EditAddressRequest(
      addressLine1: json['addressLine1'] as String,
      city: json['city'] as String,
      pin: json['pin'] as String,
    );

Map<String, dynamic> _$EditAddressRequestToJson(_EditAddressRequest instance) =>
    <String, dynamic>{
      'addressLine1': instance.addressLine1,
      'city': instance.city,
      'pin': instance.pin,
    };
