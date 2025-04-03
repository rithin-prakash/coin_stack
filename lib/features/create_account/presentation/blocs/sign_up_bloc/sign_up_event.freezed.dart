// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpEvent {

 String get phoneCode; String get phone;
/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpEventCopyWith<SignUpEvent> get copyWith => _$SignUpEventCopyWithImpl<SignUpEvent>(this as SignUpEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpEvent&&(identical(other.phoneCode, phoneCode) || other.phoneCode == phoneCode)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,phoneCode,phone);

@override
String toString() {
  return 'SignUpEvent(phoneCode: $phoneCode, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $SignUpEventCopyWith<$Res>  {
  factory $SignUpEventCopyWith(SignUpEvent value, $Res Function(SignUpEvent) _then) = _$SignUpEventCopyWithImpl;
@useResult
$Res call({
 String phoneCode, String phone
});




}
/// @nodoc
class _$SignUpEventCopyWithImpl<$Res>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._self, this._then);

  final SignUpEvent _self;
  final $Res Function(SignUpEvent) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneCode = null,Object? phone = null,}) {
  return _then(_self.copyWith(
phoneCode: null == phoneCode ? _self.phoneCode : phoneCode // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class SignUpGenerateOtp implements SignUpEvent {
  const SignUpGenerateOtp({required this.phoneCode, required this.phone});
  

@override final  String phoneCode;
@override final  String phone;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpGenerateOtpCopyWith<SignUpGenerateOtp> get copyWith => _$SignUpGenerateOtpCopyWithImpl<SignUpGenerateOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpGenerateOtp&&(identical(other.phoneCode, phoneCode) || other.phoneCode == phoneCode)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,phoneCode,phone);

@override
String toString() {
  return 'SignUpEvent.generateOtp(phoneCode: $phoneCode, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $SignUpGenerateOtpCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory $SignUpGenerateOtpCopyWith(SignUpGenerateOtp value, $Res Function(SignUpGenerateOtp) _then) = _$SignUpGenerateOtpCopyWithImpl;
@override @useResult
$Res call({
 String phoneCode, String phone
});




}
/// @nodoc
class _$SignUpGenerateOtpCopyWithImpl<$Res>
    implements $SignUpGenerateOtpCopyWith<$Res> {
  _$SignUpGenerateOtpCopyWithImpl(this._self, this._then);

  final SignUpGenerateOtp _self;
  final $Res Function(SignUpGenerateOtp) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneCode = null,Object? phone = null,}) {
  return _then(SignUpGenerateOtp(
phoneCode: null == phoneCode ? _self.phoneCode : phoneCode // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignUpVerifyOtp implements SignUpEvent {
  const SignUpVerifyOtp({required this.otp, required this.phoneCode, required this.phone});
  

 final  String otp;
@override final  String phoneCode;
@override final  String phone;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpVerifyOtpCopyWith<SignUpVerifyOtp> get copyWith => _$SignUpVerifyOtpCopyWithImpl<SignUpVerifyOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpVerifyOtp&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.phoneCode, phoneCode) || other.phoneCode == phoneCode)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,otp,phoneCode,phone);

@override
String toString() {
  return 'SignUpEvent.verifyOtp(otp: $otp, phoneCode: $phoneCode, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $SignUpVerifyOtpCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory $SignUpVerifyOtpCopyWith(SignUpVerifyOtp value, $Res Function(SignUpVerifyOtp) _then) = _$SignUpVerifyOtpCopyWithImpl;
@override @useResult
$Res call({
 String otp, String phoneCode, String phone
});




}
/// @nodoc
class _$SignUpVerifyOtpCopyWithImpl<$Res>
    implements $SignUpVerifyOtpCopyWith<$Res> {
  _$SignUpVerifyOtpCopyWithImpl(this._self, this._then);

  final SignUpVerifyOtp _self;
  final $Res Function(SignUpVerifyOtp) _then;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? otp = null,Object? phoneCode = null,Object? phone = null,}) {
  return _then(SignUpVerifyOtp(
otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,phoneCode: null == phoneCode ? _self.phoneCode : phoneCode // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
