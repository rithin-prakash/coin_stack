// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_personal_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EditPersonalRequest _$EditPersonalRequestFromJson(Map<String, dynamic> json) =>
    _EditPersonalRequest(
      fullName: json['fullName'] as String,
      username: json['username'] as String,
      dob: DateTime.parse(json['dob'] as String),
    );

Map<String, dynamic> _$EditPersonalRequestToJson(
  _EditPersonalRequest instance,
) => <String, dynamic>{
  'fullName': instance.fullName,
  'username': instance.username,
  'dob': instance.dob.toIso8601String(),
};
