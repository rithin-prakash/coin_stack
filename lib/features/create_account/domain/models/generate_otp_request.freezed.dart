// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_otp_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenerateOtpRequest {

 String get phoneCode; String get phone; String get password;
/// Create a copy of GenerateOtpRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateOtpRequestCopyWith<GenerateOtpRequest> get copyWith => _$GenerateOtpRequestCopyWithImpl<GenerateOtpRequest>(this as GenerateOtpRequest, _$identity);

  /// Serializes this GenerateOtpRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateOtpRequest&&(identical(other.phoneCode, phoneCode) || other.phoneCode == phoneCode)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneCode,phone,password);

@override
String toString() {
  return 'GenerateOtpRequest(phoneCode: $phoneCode, phone: $phone, password: $password)';
}


}

/// @nodoc
abstract mixin class $GenerateOtpRequestCopyWith<$Res>  {
  factory $GenerateOtpRequestCopyWith(GenerateOtpRequest value, $Res Function(GenerateOtpRequest) _then) = _$GenerateOtpRequestCopyWithImpl;
@useResult
$Res call({
 String phoneCode, String phone, String password
});




}
/// @nodoc
class _$GenerateOtpRequestCopyWithImpl<$Res>
    implements $GenerateOtpRequestCopyWith<$Res> {
  _$GenerateOtpRequestCopyWithImpl(this._self, this._then);

  final GenerateOtpRequest _self;
  final $Res Function(GenerateOtpRequest) _then;

/// Create a copy of GenerateOtpRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneCode = null,Object? phone = null,Object? password = null,}) {
  return _then(_self.copyWith(
phoneCode: null == phoneCode ? _self.phoneCode : phoneCode // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GenerateOtpRequest implements GenerateOtpRequest {
   _GenerateOtpRequest({required this.phoneCode, required this.phone, required this.password});
  factory _GenerateOtpRequest.fromJson(Map<String, dynamic> json) => _$GenerateOtpRequestFromJson(json);

@override final  String phoneCode;
@override final  String phone;
@override final  String password;

/// Create a copy of GenerateOtpRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenerateOtpRequestCopyWith<_GenerateOtpRequest> get copyWith => __$GenerateOtpRequestCopyWithImpl<_GenerateOtpRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenerateOtpRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenerateOtpRequest&&(identical(other.phoneCode, phoneCode) || other.phoneCode == phoneCode)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneCode,phone,password);

@override
String toString() {
  return 'GenerateOtpRequest(phoneCode: $phoneCode, phone: $phone, password: $password)';
}


}

/// @nodoc
abstract mixin class _$GenerateOtpRequestCopyWith<$Res> implements $GenerateOtpRequestCopyWith<$Res> {
  factory _$GenerateOtpRequestCopyWith(_GenerateOtpRequest value, $Res Function(_GenerateOtpRequest) _then) = __$GenerateOtpRequestCopyWithImpl;
@override @useResult
$Res call({
 String phoneCode, String phone, String password
});




}
/// @nodoc
class __$GenerateOtpRequestCopyWithImpl<$Res>
    implements _$GenerateOtpRequestCopyWith<$Res> {
  __$GenerateOtpRequestCopyWithImpl(this._self, this._then);

  final _GenerateOtpRequest _self;
  final $Res Function(_GenerateOtpRequest) _then;

/// Create a copy of GenerateOtpRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneCode = null,Object? phone = null,Object? password = null,}) {
  return _then(_GenerateOtpRequest(
phoneCode: null == phoneCode ? _self.phoneCode : phoneCode // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
