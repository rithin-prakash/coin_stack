// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_email_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditEmailRequest {

 String get email;
/// Create a copy of EditEmailRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditEmailRequestCopyWith<EditEmailRequest> get copyWith => _$EditEmailRequestCopyWithImpl<EditEmailRequest>(this as EditEmailRequest, _$identity);

  /// Serializes this EditEmailRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditEmailRequest&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'EditEmailRequest(email: $email)';
}


}

/// @nodoc
abstract mixin class $EditEmailRequestCopyWith<$Res>  {
  factory $EditEmailRequestCopyWith(EditEmailRequest value, $Res Function(EditEmailRequest) _then) = _$EditEmailRequestCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$EditEmailRequestCopyWithImpl<$Res>
    implements $EditEmailRequestCopyWith<$Res> {
  _$EditEmailRequestCopyWithImpl(this._self, this._then);

  final EditEmailRequest _self;
  final $Res Function(EditEmailRequest) _then;

/// Create a copy of EditEmailRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EditEmailRequest implements EditEmailRequest {
   _EditEmailRequest({required this.email});
  factory _EditEmailRequest.fromJson(Map<String, dynamic> json) => _$EditEmailRequestFromJson(json);

@override final  String email;

/// Create a copy of EditEmailRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditEmailRequestCopyWith<_EditEmailRequest> get copyWith => __$EditEmailRequestCopyWithImpl<_EditEmailRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EditEmailRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditEmailRequest&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'EditEmailRequest(email: $email)';
}


}

/// @nodoc
abstract mixin class _$EditEmailRequestCopyWith<$Res> implements $EditEmailRequestCopyWith<$Res> {
  factory _$EditEmailRequestCopyWith(_EditEmailRequest value, $Res Function(_EditEmailRequest) _then) = __$EditEmailRequestCopyWithImpl;
@override @useResult
$Res call({
 String email
});




}
/// @nodoc
class __$EditEmailRequestCopyWithImpl<$Res>
    implements _$EditEmailRequestCopyWith<$Res> {
  __$EditEmailRequestCopyWithImpl(this._self, this._then);

  final _EditEmailRequest _self;
  final $Res Function(_EditEmailRequest) _then;

/// Create a copy of EditEmailRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_EditEmailRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
