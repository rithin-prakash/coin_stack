// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tnc_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TncResponse _$TncResponseFromJson(Map<String, dynamic> json) => _TncResponse(
  tncVersion: json['tncVersion'] as String,
  tncTitle: json['tncTitle'] as String,
  tncHtml: json['tncHtml'] as String,
);

Map<String, dynamic> _$TncResponseToJson(_TncResponse instance) =>
    <String, dynamic>{
      'tncVersion': instance.tncVersion,
      'tncTitle': instance.tncTitle,
      'tncHtml': instance.tncHtml,
    };
