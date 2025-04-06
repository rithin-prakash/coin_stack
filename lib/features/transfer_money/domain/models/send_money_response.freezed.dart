// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_money_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendMoneyResponse {

 String get id; DateTime? get completedTime; DateTime get initiatedTime;@TxnSendStatusTypeConverter() TxnSendStatusType get status; ConnectedProfile get sendProfile; ConnectedProfile get receiveProfile;
/// Create a copy of SendMoneyResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendMoneyResponseCopyWith<SendMoneyResponse> get copyWith => _$SendMoneyResponseCopyWithImpl<SendMoneyResponse>(this as SendMoneyResponse, _$identity);

  /// Serializes this SendMoneyResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMoneyResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.completedTime, completedTime) || other.completedTime == completedTime)&&(identical(other.initiatedTime, initiatedTime) || other.initiatedTime == initiatedTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.sendProfile, sendProfile) || other.sendProfile == sendProfile)&&(identical(other.receiveProfile, receiveProfile) || other.receiveProfile == receiveProfile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,completedTime,initiatedTime,status,sendProfile,receiveProfile);

@override
String toString() {
  return 'SendMoneyResponse(id: $id, completedTime: $completedTime, initiatedTime: $initiatedTime, status: $status, sendProfile: $sendProfile, receiveProfile: $receiveProfile)';
}


}

/// @nodoc
abstract mixin class $SendMoneyResponseCopyWith<$Res>  {
  factory $SendMoneyResponseCopyWith(SendMoneyResponse value, $Res Function(SendMoneyResponse) _then) = _$SendMoneyResponseCopyWithImpl;
@useResult
$Res call({
 String id, DateTime? completedTime, DateTime initiatedTime,@TxnSendStatusTypeConverter() TxnSendStatusType status, ConnectedProfile sendProfile, ConnectedProfile receiveProfile
});


$ConnectedProfileCopyWith<$Res> get sendProfile;$ConnectedProfileCopyWith<$Res> get receiveProfile;

}
/// @nodoc
class _$SendMoneyResponseCopyWithImpl<$Res>
    implements $SendMoneyResponseCopyWith<$Res> {
  _$SendMoneyResponseCopyWithImpl(this._self, this._then);

  final SendMoneyResponse _self;
  final $Res Function(SendMoneyResponse) _then;

/// Create a copy of SendMoneyResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? completedTime = freezed,Object? initiatedTime = null,Object? status = null,Object? sendProfile = null,Object? receiveProfile = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,completedTime: freezed == completedTime ? _self.completedTime : completedTime // ignore: cast_nullable_to_non_nullable
as DateTime?,initiatedTime: null == initiatedTime ? _self.initiatedTime : initiatedTime // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TxnSendStatusType,sendProfile: null == sendProfile ? _self.sendProfile : sendProfile // ignore: cast_nullable_to_non_nullable
as ConnectedProfile,receiveProfile: null == receiveProfile ? _self.receiveProfile : receiveProfile // ignore: cast_nullable_to_non_nullable
as ConnectedProfile,
  ));
}
/// Create a copy of SendMoneyResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectedProfileCopyWith<$Res> get sendProfile {
  
  return $ConnectedProfileCopyWith<$Res>(_self.sendProfile, (value) {
    return _then(_self.copyWith(sendProfile: value));
  });
}/// Create a copy of SendMoneyResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectedProfileCopyWith<$Res> get receiveProfile {
  
  return $ConnectedProfileCopyWith<$Res>(_self.receiveProfile, (value) {
    return _then(_self.copyWith(receiveProfile: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _SendMoneyResponse implements SendMoneyResponse {
  const _SendMoneyResponse({required this.id, required this.completedTime, required this.initiatedTime, @TxnSendStatusTypeConverter() required this.status, required this.sendProfile, required this.receiveProfile});
  factory _SendMoneyResponse.fromJson(Map<String, dynamic> json) => _$SendMoneyResponseFromJson(json);

@override final  String id;
@override final  DateTime? completedTime;
@override final  DateTime initiatedTime;
@override@TxnSendStatusTypeConverter() final  TxnSendStatusType status;
@override final  ConnectedProfile sendProfile;
@override final  ConnectedProfile receiveProfile;

/// Create a copy of SendMoneyResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMoneyResponseCopyWith<_SendMoneyResponse> get copyWith => __$SendMoneyResponseCopyWithImpl<_SendMoneyResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendMoneyResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMoneyResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.completedTime, completedTime) || other.completedTime == completedTime)&&(identical(other.initiatedTime, initiatedTime) || other.initiatedTime == initiatedTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.sendProfile, sendProfile) || other.sendProfile == sendProfile)&&(identical(other.receiveProfile, receiveProfile) || other.receiveProfile == receiveProfile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,completedTime,initiatedTime,status,sendProfile,receiveProfile);

@override
String toString() {
  return 'SendMoneyResponse(id: $id, completedTime: $completedTime, initiatedTime: $initiatedTime, status: $status, sendProfile: $sendProfile, receiveProfile: $receiveProfile)';
}


}

/// @nodoc
abstract mixin class _$SendMoneyResponseCopyWith<$Res> implements $SendMoneyResponseCopyWith<$Res> {
  factory _$SendMoneyResponseCopyWith(_SendMoneyResponse value, $Res Function(_SendMoneyResponse) _then) = __$SendMoneyResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime? completedTime, DateTime initiatedTime,@TxnSendStatusTypeConverter() TxnSendStatusType status, ConnectedProfile sendProfile, ConnectedProfile receiveProfile
});


@override $ConnectedProfileCopyWith<$Res> get sendProfile;@override $ConnectedProfileCopyWith<$Res> get receiveProfile;

}
/// @nodoc
class __$SendMoneyResponseCopyWithImpl<$Res>
    implements _$SendMoneyResponseCopyWith<$Res> {
  __$SendMoneyResponseCopyWithImpl(this._self, this._then);

  final _SendMoneyResponse _self;
  final $Res Function(_SendMoneyResponse) _then;

/// Create a copy of SendMoneyResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? completedTime = freezed,Object? initiatedTime = null,Object? status = null,Object? sendProfile = null,Object? receiveProfile = null,}) {
  return _then(_SendMoneyResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,completedTime: freezed == completedTime ? _self.completedTime : completedTime // ignore: cast_nullable_to_non_nullable
as DateTime?,initiatedTime: null == initiatedTime ? _self.initiatedTime : initiatedTime // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TxnSendStatusType,sendProfile: null == sendProfile ? _self.sendProfile : sendProfile // ignore: cast_nullable_to_non_nullable
as ConnectedProfile,receiveProfile: null == receiveProfile ? _self.receiveProfile : receiveProfile // ignore: cast_nullable_to_non_nullable
as ConnectedProfile,
  ));
}

/// Create a copy of SendMoneyResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectedProfileCopyWith<$Res> get sendProfile {
  
  return $ConnectedProfileCopyWith<$Res>(_self.sendProfile, (value) {
    return _then(_self.copyWith(sendProfile: value));
  });
}/// Create a copy of SendMoneyResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectedProfileCopyWith<$Res> get receiveProfile {
  
  return $ConnectedProfileCopyWith<$Res>(_self.receiveProfile, (value) {
    return _then(_self.copyWith(receiveProfile: value));
  });
}
}

// dart format on
