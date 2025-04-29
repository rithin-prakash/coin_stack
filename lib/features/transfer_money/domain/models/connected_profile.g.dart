// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connected_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConnectedProfile _$ConnectedProfileFromJson(Map<String, dynamic> json) =>
    _ConnectedProfile(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String?,
      profileUrl: json['profileUrl'] as String?,
    );

Map<String, dynamic> _$ConnectedProfileToJson(_ConnectedProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'profileUrl': instance.profileUrl,
    };
