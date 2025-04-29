// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spend_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SPendRequest _$SPendRequestFromJson(Map<String, dynamic> json) =>
    _SPendRequest(
      date: const DateTimeConverter().fromJson(json['date'] as String),
    );

Map<String, dynamic> _$SPendRequestToJson(_SPendRequest instance) =>
    <String, dynamic>{'date': const DateTimeConverter().toJson(instance.date)};
