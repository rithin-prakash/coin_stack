// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionDetailsResponse {

 String get id;@DateTimeConverter() DateTime? get completedTime;@DateTimeConverter() DateTime get initiatedTime;@TxnStatusTypeConverter() TxnStatusType get status; ConnectedProfile get sendProfile; ConnectedProfile get receiveProfile;
/// Create a copy of TransactionDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionDetailsResponseCopyWith<TransactionDetailsResponse> get copyWith => _$TransactionDetailsResponseCopyWithImpl<TransactionDetailsResponse>(this as TransactionDetailsResponse, _$identity);

  /// Serializes this TransactionDetailsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionDetailsResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.completedTime, completedTime) || other.completedTime == completedTime)&&(identical(other.initiatedTime, initiatedTime) || other.initiatedTime == initiatedTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.sendProfile, sendProfile) || other.sendProfile == sendProfile)&&(identical(other.receiveProfile, receiveProfile) || other.receiveProfile == receiveProfile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,completedTime,initiatedTime,status,sendProfile,receiveProfile);

@override
String toString() {
  return 'TransactionDetailsResponse(id: $id, completedTime: $completedTime, initiatedTime: $initiatedTime, status: $status, sendProfile: $sendProfile, receiveProfile: $receiveProfile)';
}


}

/// @nodoc
abstract mixin class $TransactionDetailsResponseCopyWith<$Res>  {
  factory $TransactionDetailsResponseCopyWith(TransactionDetailsResponse value, $Res Function(TransactionDetailsResponse) _then) = _$TransactionDetailsResponseCopyWithImpl;
@useResult
$Res call({
 String id,@DateTimeConverter() DateTime? completedTime,@DateTimeConverter() DateTime initiatedTime,@TxnStatusTypeConverter() TxnStatusType status, ConnectedProfile sendProfile, ConnectedProfile receiveProfile
});


$ConnectedProfileCopyWith<$Res> get sendProfile;$ConnectedProfileCopyWith<$Res> get receiveProfile;

}
/// @nodoc
class _$TransactionDetailsResponseCopyWithImpl<$Res>
    implements $TransactionDetailsResponseCopyWith<$Res> {
  _$TransactionDetailsResponseCopyWithImpl(this._self, this._then);

  final TransactionDetailsResponse _self;
  final $Res Function(TransactionDetailsResponse) _then;

/// Create a copy of TransactionDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? completedTime = freezed,Object? initiatedTime = null,Object? status = null,Object? sendProfile = null,Object? receiveProfile = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,completedTime: freezed == completedTime ? _self.completedTime : completedTime // ignore: cast_nullable_to_non_nullable
as DateTime?,initiatedTime: null == initiatedTime ? _self.initiatedTime : initiatedTime // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TxnStatusType,sendProfile: null == sendProfile ? _self.sendProfile : sendProfile // ignore: cast_nullable_to_non_nullable
as ConnectedProfile,receiveProfile: null == receiveProfile ? _self.receiveProfile : receiveProfile // ignore: cast_nullable_to_non_nullable
as ConnectedProfile,
  ));
}
/// Create a copy of TransactionDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectedProfileCopyWith<$Res> get sendProfile {
  
  return $ConnectedProfileCopyWith<$Res>(_self.sendProfile, (value) {
    return _then(_self.copyWith(sendProfile: value));
  });
}/// Create a copy of TransactionDetailsResponse
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

class _TransactionDetailsResponse extends TransactionDetailsResponse {
   _TransactionDetailsResponse({required this.id, @DateTimeConverter() required this.completedTime, @DateTimeConverter() required this.initiatedTime, @TxnStatusTypeConverter() required this.status, required this.sendProfile, required this.receiveProfile}): super._();
  factory _TransactionDetailsResponse.fromJson(Map<String, dynamic> json) => _$TransactionDetailsResponseFromJson(json);

@override final  String id;
@override@DateTimeConverter() final  DateTime? completedTime;
@override@DateTimeConverter() final  DateTime initiatedTime;
@override@TxnStatusTypeConverter() final  TxnStatusType status;
@override final  ConnectedProfile sendProfile;
@override final  ConnectedProfile receiveProfile;

/// Create a copy of TransactionDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionDetailsResponseCopyWith<_TransactionDetailsResponse> get copyWith => __$TransactionDetailsResponseCopyWithImpl<_TransactionDetailsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionDetailsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionDetailsResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.completedTime, completedTime) || other.completedTime == completedTime)&&(identical(other.initiatedTime, initiatedTime) || other.initiatedTime == initiatedTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.sendProfile, sendProfile) || other.sendProfile == sendProfile)&&(identical(other.receiveProfile, receiveProfile) || other.receiveProfile == receiveProfile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,completedTime,initiatedTime,status,sendProfile,receiveProfile);

@override
String toString() {
  return 'TransactionDetailsResponse(id: $id, completedTime: $completedTime, initiatedTime: $initiatedTime, status: $status, sendProfile: $sendProfile, receiveProfile: $receiveProfile)';
}


}

/// @nodoc
abstract mixin class _$TransactionDetailsResponseCopyWith<$Res> implements $TransactionDetailsResponseCopyWith<$Res> {
  factory _$TransactionDetailsResponseCopyWith(_TransactionDetailsResponse value, $Res Function(_TransactionDetailsResponse) _then) = __$TransactionDetailsResponseCopyWithImpl;
@override @useResult
$Res call({
 String id,@DateTimeConverter() DateTime? completedTime,@DateTimeConverter() DateTime initiatedTime,@TxnStatusTypeConverter() TxnStatusType status, ConnectedProfile sendProfile, ConnectedProfile receiveProfile
});


@override $ConnectedProfileCopyWith<$Res> get sendProfile;@override $ConnectedProfileCopyWith<$Res> get receiveProfile;

}
/// @nodoc
class __$TransactionDetailsResponseCopyWithImpl<$Res>
    implements _$TransactionDetailsResponseCopyWith<$Res> {
  __$TransactionDetailsResponseCopyWithImpl(this._self, this._then);

  final _TransactionDetailsResponse _self;
  final $Res Function(_TransactionDetailsResponse) _then;

/// Create a copy of TransactionDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? completedTime = freezed,Object? initiatedTime = null,Object? status = null,Object? sendProfile = null,Object? receiveProfile = null,}) {
  return _then(_TransactionDetailsResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,completedTime: freezed == completedTime ? _self.completedTime : completedTime // ignore: cast_nullable_to_non_nullable
as DateTime?,initiatedTime: null == initiatedTime ? _self.initiatedTime : initiatedTime // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TxnStatusType,sendProfile: null == sendProfile ? _self.sendProfile : sendProfile // ignore: cast_nullable_to_non_nullable
as ConnectedProfile,receiveProfile: null == receiveProfile ? _self.receiveProfile : receiveProfile // ignore: cast_nullable_to_non_nullable
as ConnectedProfile,
  ));
}

/// Create a copy of TransactionDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectedProfileCopyWith<$Res> get sendProfile {
  
  return $ConnectedProfileCopyWith<$Res>(_self.sendProfile, (value) {
    return _then(_self.copyWith(sendProfile: value));
  });
}/// Create a copy of TransactionDetailsResponse
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
