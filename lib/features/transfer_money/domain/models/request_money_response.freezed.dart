// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_money_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestMoneyResponse {

 String get id;@DateTimeConverter() DateTime get initiatedTime;@TxnSendStatusTypeConverter() TxnSendStatusType get status; ConnectedProfile get requestRecievedTo;
/// Create a copy of RequestMoneyResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestMoneyResponseCopyWith<RequestMoneyResponse> get copyWith => _$RequestMoneyResponseCopyWithImpl<RequestMoneyResponse>(this as RequestMoneyResponse, _$identity);

  /// Serializes this RequestMoneyResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestMoneyResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.initiatedTime, initiatedTime) || other.initiatedTime == initiatedTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestRecievedTo, requestRecievedTo) || other.requestRecievedTo == requestRecievedTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,initiatedTime,status,requestRecievedTo);

@override
String toString() {
  return 'RequestMoneyResponse(id: $id, initiatedTime: $initiatedTime, status: $status, requestRecievedTo: $requestRecievedTo)';
}


}

/// @nodoc
abstract mixin class $RequestMoneyResponseCopyWith<$Res>  {
  factory $RequestMoneyResponseCopyWith(RequestMoneyResponse value, $Res Function(RequestMoneyResponse) _then) = _$RequestMoneyResponseCopyWithImpl;
@useResult
$Res call({
 String id,@DateTimeConverter() DateTime initiatedTime,@TxnSendStatusTypeConverter() TxnSendStatusType status, ConnectedProfile requestRecievedTo
});


$ConnectedProfileCopyWith<$Res> get requestRecievedTo;

}
/// @nodoc
class _$RequestMoneyResponseCopyWithImpl<$Res>
    implements $RequestMoneyResponseCopyWith<$Res> {
  _$RequestMoneyResponseCopyWithImpl(this._self, this._then);

  final RequestMoneyResponse _self;
  final $Res Function(RequestMoneyResponse) _then;

/// Create a copy of RequestMoneyResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? initiatedTime = null,Object? status = null,Object? requestRecievedTo = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,initiatedTime: null == initiatedTime ? _self.initiatedTime : initiatedTime // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TxnSendStatusType,requestRecievedTo: null == requestRecievedTo ? _self.requestRecievedTo : requestRecievedTo // ignore: cast_nullable_to_non_nullable
as ConnectedProfile,
  ));
}
/// Create a copy of RequestMoneyResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectedProfileCopyWith<$Res> get requestRecievedTo {
  
  return $ConnectedProfileCopyWith<$Res>(_self.requestRecievedTo, (value) {
    return _then(_self.copyWith(requestRecievedTo: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _RequestMoneyResponse implements RequestMoneyResponse {
  const _RequestMoneyResponse({required this.id, @DateTimeConverter() required this.initiatedTime, @TxnSendStatusTypeConverter() required this.status, required this.requestRecievedTo});
  factory _RequestMoneyResponse.fromJson(Map<String, dynamic> json) => _$RequestMoneyResponseFromJson(json);

@override final  String id;
@override@DateTimeConverter() final  DateTime initiatedTime;
@override@TxnSendStatusTypeConverter() final  TxnSendStatusType status;
@override final  ConnectedProfile requestRecievedTo;

/// Create a copy of RequestMoneyResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestMoneyResponseCopyWith<_RequestMoneyResponse> get copyWith => __$RequestMoneyResponseCopyWithImpl<_RequestMoneyResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestMoneyResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestMoneyResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.initiatedTime, initiatedTime) || other.initiatedTime == initiatedTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestRecievedTo, requestRecievedTo) || other.requestRecievedTo == requestRecievedTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,initiatedTime,status,requestRecievedTo);

@override
String toString() {
  return 'RequestMoneyResponse(id: $id, initiatedTime: $initiatedTime, status: $status, requestRecievedTo: $requestRecievedTo)';
}


}

/// @nodoc
abstract mixin class _$RequestMoneyResponseCopyWith<$Res> implements $RequestMoneyResponseCopyWith<$Res> {
  factory _$RequestMoneyResponseCopyWith(_RequestMoneyResponse value, $Res Function(_RequestMoneyResponse) _then) = __$RequestMoneyResponseCopyWithImpl;
@override @useResult
$Res call({
 String id,@DateTimeConverter() DateTime initiatedTime,@TxnSendStatusTypeConverter() TxnSendStatusType status, ConnectedProfile requestRecievedTo
});


@override $ConnectedProfileCopyWith<$Res> get requestRecievedTo;

}
/// @nodoc
class __$RequestMoneyResponseCopyWithImpl<$Res>
    implements _$RequestMoneyResponseCopyWith<$Res> {
  __$RequestMoneyResponseCopyWithImpl(this._self, this._then);

  final _RequestMoneyResponse _self;
  final $Res Function(_RequestMoneyResponse) _then;

/// Create a copy of RequestMoneyResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? initiatedTime = null,Object? status = null,Object? requestRecievedTo = null,}) {
  return _then(_RequestMoneyResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,initiatedTime: null == initiatedTime ? _self.initiatedTime : initiatedTime // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TxnSendStatusType,requestRecievedTo: null == requestRecievedTo ? _self.requestRecievedTo : requestRecievedTo // ignore: cast_nullable_to_non_nullable
as ConnectedProfile,
  ));
}

/// Create a copy of RequestMoneyResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectedProfileCopyWith<$Res> get requestRecievedTo {
  
  return $ConnectedProfileCopyWith<$Res>(_self.requestRecievedTo, (value) {
    return _then(_self.copyWith(requestRecievedTo: value));
  });
}
}

// dart format on
