// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GenerateOtpState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateOtpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenerateOtpState()';
}


}

/// @nodoc
class $GenerateOtpStateCopyWith<$Res>  {
$GenerateOtpStateCopyWith(GenerateOtpState _, $Res Function(GenerateOtpState) __);
}


/// @nodoc


class GenerateOtpStateInitial implements GenerateOtpState {
  const GenerateOtpStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateOtpStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenerateOtpState.initial()';
}


}




/// @nodoc


class GenerateOtpLoading implements GenerateOtpState {
  const GenerateOtpLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateOtpLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenerateOtpState.loading()';
}


}




/// @nodoc


class GenerateOtpFailure implements GenerateOtpState {
  const GenerateOtpFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of GenerateOtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenerateOtpFailureCopyWith<GenerateOtpFailure> get copyWith => _$GenerateOtpFailureCopyWithImpl<GenerateOtpFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateOtpFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'GenerateOtpState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $GenerateOtpFailureCopyWith<$Res> implements $GenerateOtpStateCopyWith<$Res> {
  factory $GenerateOtpFailureCopyWith(GenerateOtpFailure value, $Res Function(GenerateOtpFailure) _then) = _$GenerateOtpFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$GenerateOtpFailureCopyWithImpl<$Res>
    implements $GenerateOtpFailureCopyWith<$Res> {
  _$GenerateOtpFailureCopyWithImpl(this._self, this._then);

  final GenerateOtpFailure _self;
  final $Res Function(GenerateOtpFailure) _then;

/// Create a copy of GenerateOtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(GenerateOtpFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of GenerateOtpState
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


class GenerateOtpSuccess implements GenerateOtpState {
  const GenerateOtpSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenerateOtpSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GenerateOtpState.success()';
}


}




// dart format on
