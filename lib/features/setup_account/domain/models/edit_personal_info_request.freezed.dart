// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_personal_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditPersonalRequest {

 String get fullName; String get username; String get dob;
/// Create a copy of EditPersonalRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditPersonalRequestCopyWith<EditPersonalRequest> get copyWith => _$EditPersonalRequestCopyWithImpl<EditPersonalRequest>(this as EditPersonalRequest, _$identity);

  /// Serializes this EditPersonalRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditPersonalRequest&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.username, username) || other.username == username)&&(identical(other.dob, dob) || other.dob == dob));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,username,dob);

@override
String toString() {
  return 'EditPersonalRequest(fullName: $fullName, username: $username, dob: $dob)';
}


}

/// @nodoc
abstract mixin class $EditPersonalRequestCopyWith<$Res>  {
  factory $EditPersonalRequestCopyWith(EditPersonalRequest value, $Res Function(EditPersonalRequest) _then) = _$EditPersonalRequestCopyWithImpl;
@useResult
$Res call({
 String fullName, String username, String dob
});




}
/// @nodoc
class _$EditPersonalRequestCopyWithImpl<$Res>
    implements $EditPersonalRequestCopyWith<$Res> {
  _$EditPersonalRequestCopyWithImpl(this._self, this._then);

  final EditPersonalRequest _self;
  final $Res Function(EditPersonalRequest) _then;

/// Create a copy of EditPersonalRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = null,Object? username = null,Object? dob = null,}) {
  return _then(_self.copyWith(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EditPersonalRequest implements EditPersonalRequest {
   _EditPersonalRequest({required this.fullName, required this.username, required this.dob});
  factory _EditPersonalRequest.fromJson(Map<String, dynamic> json) => _$EditPersonalRequestFromJson(json);

@override final  String fullName;
@override final  String username;
@override final  String dob;

/// Create a copy of EditPersonalRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditPersonalRequestCopyWith<_EditPersonalRequest> get copyWith => __$EditPersonalRequestCopyWithImpl<_EditPersonalRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EditPersonalRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditPersonalRequest&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.username, username) || other.username == username)&&(identical(other.dob, dob) || other.dob == dob));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,username,dob);

@override
String toString() {
  return 'EditPersonalRequest(fullName: $fullName, username: $username, dob: $dob)';
}


}

/// @nodoc
abstract mixin class _$EditPersonalRequestCopyWith<$Res> implements $EditPersonalRequestCopyWith<$Res> {
  factory _$EditPersonalRequestCopyWith(_EditPersonalRequest value, $Res Function(_EditPersonalRequest) _then) = __$EditPersonalRequestCopyWithImpl;
@override @useResult
$Res call({
 String fullName, String username, String dob
});




}
/// @nodoc
class __$EditPersonalRequestCopyWithImpl<$Res>
    implements _$EditPersonalRequestCopyWith<$Res> {
  __$EditPersonalRequestCopyWithImpl(this._self, this._then);

  final _EditPersonalRequest _self;
  final $Res Function(_EditPersonalRequest) _then;

/// Create a copy of EditPersonalRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? username = null,Object? dob = null,}) {
  return _then(_EditPersonalRequest(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,dob: null == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
