// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState()';
}


}

/// @nodoc
class $SignUpStateCopyWith<$Res>  {
$SignUpStateCopyWith(SignUpState _, $Res Function(SignUpState) __);
}


/// @nodoc


class SignUpInitial implements SignUpState {
  const SignUpInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.initial()';
}


}




/// @nodoc


class SignUpGenerateOtpLoading implements SignUpState {
  const SignUpGenerateOtpLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpGenerateOtpLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.generateOtpLoading()';
}


}




/// @nodoc


class SignUpGenerateOtpLoaded implements SignUpState {
  const SignUpGenerateOtpLoaded(this.otp);
  

 final  String? otp;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpGenerateOtpLoadedCopyWith<SignUpGenerateOtpLoaded> get copyWith => _$SignUpGenerateOtpLoadedCopyWithImpl<SignUpGenerateOtpLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpGenerateOtpLoaded&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode => Object.hash(runtimeType,otp);

@override
String toString() {
  return 'SignUpState.generateOtpLoaded(otp: $otp)';
}


}

/// @nodoc
abstract mixin class $SignUpGenerateOtpLoadedCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpGenerateOtpLoadedCopyWith(SignUpGenerateOtpLoaded value, $Res Function(SignUpGenerateOtpLoaded) _then) = _$SignUpGenerateOtpLoadedCopyWithImpl;
@useResult
$Res call({
 String? otp
});




}
/// @nodoc
class _$SignUpGenerateOtpLoadedCopyWithImpl<$Res>
    implements $SignUpGenerateOtpLoadedCopyWith<$Res> {
  _$SignUpGenerateOtpLoadedCopyWithImpl(this._self, this._then);

  final SignUpGenerateOtpLoaded _self;
  final $Res Function(SignUpGenerateOtpLoaded) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? otp = freezed,}) {
  return _then(SignUpGenerateOtpLoaded(
freezed == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class SignUpGenerateOtpFailure implements SignUpState {
  const SignUpGenerateOtpFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpGenerateOtpFailureCopyWith<SignUpGenerateOtpFailure> get copyWith => _$SignUpGenerateOtpFailureCopyWithImpl<SignUpGenerateOtpFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpGenerateOtpFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'SignUpState.generateOtpFailure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $SignUpGenerateOtpFailureCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpGenerateOtpFailureCopyWith(SignUpGenerateOtpFailure value, $Res Function(SignUpGenerateOtpFailure) _then) = _$SignUpGenerateOtpFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$SignUpGenerateOtpFailureCopyWithImpl<$Res>
    implements $SignUpGenerateOtpFailureCopyWith<$Res> {
  _$SignUpGenerateOtpFailureCopyWithImpl(this._self, this._then);

  final SignUpGenerateOtpFailure _self;
  final $Res Function(SignUpGenerateOtpFailure) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(SignUpGenerateOtpFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res> get failure {
  
  return $FailureCopyWith<$Res>(_self.failure, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

/// @nodoc


class SignUpVerifyOtpLoading implements SignUpState {
  const SignUpVerifyOtpLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpVerifyOtpLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.verifyOtpLoading()';
}


}




/// @nodoc


class SignUpVerifyOtpLoaded implements SignUpState {
  const SignUpVerifyOtpLoaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpVerifyOtpLoaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState.verifyOtpLoaded()';
}


}




/// @nodoc


class SignUpVerifyOtpFailure implements SignUpState {
  const SignUpVerifyOtpFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpVerifyOtpFailureCopyWith<SignUpVerifyOtpFailure> get copyWith => _$SignUpVerifyOtpFailureCopyWithImpl<SignUpVerifyOtpFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpVerifyOtpFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'SignUpState.verifyOtpFailure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $SignUpVerifyOtpFailureCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory $SignUpVerifyOtpFailureCopyWith(SignUpVerifyOtpFailure value, $Res Function(SignUpVerifyOtpFailure) _then) = _$SignUpVerifyOtpFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$SignUpVerifyOtpFailureCopyWithImpl<$Res>
    implements $SignUpVerifyOtpFailureCopyWith<$Res> {
  _$SignUpVerifyOtpFailureCopyWithImpl(this._self, this._then);

  final SignUpVerifyOtpFailure _self;
  final $Res Function(SignUpVerifyOtpFailure) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(SignUpVerifyOtpFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res> get failure {
  
  return $FailureCopyWith<$Res>(_self.failure, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

// dart format on
