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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpEvent()';
}


}

/// @nodoc
class $SignUpEventCopyWith<$Res>  {
$SignUpEventCopyWith(SignUpEvent _, $Res Function(SignUpEvent) __);
}


/// @nodoc


class SignUpGenerateOtp implements SignUpEvent {
  const SignUpGenerateOtp();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpGenerateOtp);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpEvent.generateOtp()';
}


}




/// @nodoc


class SignUpVerifyOtp implements SignUpEvent {
  const SignUpVerifyOtp(this.otp);
  

 final  String otp;

/// Create a copy of SignUpEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpVerifyOtpCopyWith<SignUpVerifyOtp> get copyWith => _$SignUpVerifyOtpCopyWithImpl<SignUpVerifyOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpVerifyOtp&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode => Object.hash(runtimeType,otp);

@override
String toString() {
  return 'SignUpEvent.verifyOtp(otp: $otp)';
}


}

/// @nodoc
abstract mixin class $SignUpVerifyOtpCopyWith<$Res> implements $SignUpEventCopyWith<$Res> {
  factory $SignUpVerifyOtpCopyWith(SignUpVerifyOtp value, $Res Function(SignUpVerifyOtp) _then) = _$SignUpVerifyOtpCopyWithImpl;
@useResult
$Res call({
 String otp
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
@pragma('vm:prefer-inline') $Res call({Object? otp = null,}) {
  return _then(SignUpVerifyOtp(
null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
