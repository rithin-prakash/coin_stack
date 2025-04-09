// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privacy_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrivacyResponse _$PrivacyResponseFromJson(Map<String, dynamic> json) =>
    _PrivacyResponse(
      privacyVersion: json['privacyVersion'] as String,
      privacyTitle: json['privacyTitle'] as String,
      privacyHtml: json['privacyHtml'] as String,
    );

Map<String, dynamic> _$PrivacyResponseToJson(_PrivacyResponse instance) =>
    <String, dynamic>{
      'privacyVersion': instance.privacyVersion,
      'privacyTitle': instance.privacyTitle,
      'privacyHtml': instance.privacyHtml,
    };
