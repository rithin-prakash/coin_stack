// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  phone: json['phone'] as String,
  phoneCode: json['phoneCode'] as String,
  email: json['email'] as String?,
  addressLine: json['addressLine'] as String?,
  city: json['city'] as String?,
  pincode: json['pincode'] as String?,
  fullName: json['fullName'] as String?,
  username: json['username'] as String?,
  dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
  residentCountry:
      json['residentCountry'] == null
          ? null
          : Country.fromJson(json['residentCountry'] as Map<String, dynamic>),
  phoneVerified: json['phoneVerified'] as bool? ?? false,
  idVerified: json['idVerified'] as bool? ?? false,
  photoVerified: json['photoVerified'] as bool? ?? false,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'phone': instance.phone,
  'phoneCode': instance.phoneCode,
  'email': instance.email,
  'addressLine': instance.addressLine,
  'city': instance.city,
  'pincode': instance.pincode,
  'fullName': instance.fullName,
  'username': instance.username,
  'dob': instance.dob?.toIso8601String(),
  'residentCountry': instance.residentCountry,
  'phoneVerified': instance.phoneVerified,
  'idVerified': instance.idVerified,
  'photoVerified': instance.photoVerified,
};
