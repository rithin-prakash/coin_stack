// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenerateOtpRequest _$GenerateOtpRequestFromJson(Map<String, dynamic> json) =>
    _GenerateOtpRequest(
      phoneCode: json['phoneCode'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$GenerateOtpRequestToJson(_GenerateOtpRequest instance) =>
    <String, dynamic>{'phoneCode': instance.phoneCode, 'phone': instance.phone};
