// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spend_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
SpendRequest _$SpendRequestFromJson(
  Map<String, dynamic> json
) {
    return _SPendRequest.fromJson(
      json
    );
}

/// @nodoc
mixin _$SpendRequest {

@DateTimeConverter() DateTime get date;
/// Create a copy of SpendRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpendRequestCopyWith<SpendRequest> get copyWith => _$SpendRequestCopyWithImpl<SpendRequest>(this as SpendRequest, _$identity);

  /// Serializes this SpendRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpendRequest&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'SpendRequest(date: $date)';
}


}

/// @nodoc
abstract mixin class $SpendRequestCopyWith<$Res>  {
  factory $SpendRequestCopyWith(SpendRequest value, $Res Function(SpendRequest) _then) = _$SpendRequestCopyWithImpl;
@useResult
$Res call({
@DateTimeConverter() DateTime date
});




}
/// @nodoc
class _$SpendRequestCopyWithImpl<$Res>
    implements $SpendRequestCopyWith<$Res> {
  _$SpendRequestCopyWithImpl(this._self, this._then);

  final SpendRequest _self;
  final $Res Function(SpendRequest) _then;

/// Create a copy of SpendRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SPendRequest implements SpendRequest {
  const _SPendRequest({@DateTimeConverter() required this.date});
  factory _SPendRequest.fromJson(Map<String, dynamic> json) => _$SPendRequestFromJson(json);

@override@DateTimeConverter() final  DateTime date;

/// Create a copy of SpendRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SPendRequestCopyWith<_SPendRequest> get copyWith => __$SPendRequestCopyWithImpl<_SPendRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SPendRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SPendRequest&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'SpendRequest(date: $date)';
}


}

/// @nodoc
abstract mixin class _$SPendRequestCopyWith<$Res> implements $SpendRequestCopyWith<$Res> {
  factory _$SPendRequestCopyWith(_SPendRequest value, $Res Function(_SPendRequest) _then) = __$SPendRequestCopyWithImpl;
@override @useResult
$Res call({
@DateTimeConverter() DateTime date
});




}
/// @nodoc
class __$SPendRequestCopyWithImpl<$Res>
    implements _$SPendRequestCopyWith<$Res> {
  __$SPendRequestCopyWithImpl(this._self, this._then);

  final _SPendRequest _self;
  final $Res Function(_SPendRequest) _then;

/// Create a copy of SpendRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(_SPendRequest(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
