// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_money_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SendMoneyState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMoneyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendMoneyState()';
}


}

/// @nodoc
class $SendMoneyStateCopyWith<$Res>  {
$SendMoneyStateCopyWith(SendMoneyState _, $Res Function(SendMoneyState) __);
}


/// @nodoc


class SendMoneyInitial implements SendMoneyState {
  const SendMoneyInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMoneyInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendMoneyState.initial()';
}


}




/// @nodoc


class SendMoneyLoading implements SendMoneyState {
  const SendMoneyLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMoneyLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendMoneyState.loading()';
}


}




/// @nodoc


class SendMoneyLoaded implements SendMoneyState {
  const SendMoneyLoaded(this.response);
  

 final  SendMoneyResponse response;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendMoneyLoadedCopyWith<SendMoneyLoaded> get copyWith => _$SendMoneyLoadedCopyWithImpl<SendMoneyLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMoneyLoaded&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'SendMoneyState.loaded(response: $response)';
}


}

/// @nodoc
abstract mixin class $SendMoneyLoadedCopyWith<$Res> implements $SendMoneyStateCopyWith<$Res> {
  factory $SendMoneyLoadedCopyWith(SendMoneyLoaded value, $Res Function(SendMoneyLoaded) _then) = _$SendMoneyLoadedCopyWithImpl;
@useResult
$Res call({
 SendMoneyResponse response
});


$SendMoneyResponseCopyWith<$Res> get response;

}
/// @nodoc
class _$SendMoneyLoadedCopyWithImpl<$Res>
    implements $SendMoneyLoadedCopyWith<$Res> {
  _$SendMoneyLoadedCopyWithImpl(this._self, this._then);

  final SendMoneyLoaded _self;
  final $Res Function(SendMoneyLoaded) _then;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(SendMoneyLoaded(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as SendMoneyResponse,
  ));
}

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SendMoneyResponseCopyWith<$Res> get response {
  
  return $SendMoneyResponseCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}

/// @nodoc


class SendMoneyFailed implements SendMoneyState {
  const SendMoneyFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendMoneyFailedCopyWith<SendMoneyFailed> get copyWith => _$SendMoneyFailedCopyWithImpl<SendMoneyFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMoneyFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'SendMoneyState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $SendMoneyFailedCopyWith<$Res> implements $SendMoneyStateCopyWith<$Res> {
  factory $SendMoneyFailedCopyWith(SendMoneyFailed value, $Res Function(SendMoneyFailed) _then) = _$SendMoneyFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$SendMoneyFailedCopyWithImpl<$Res>
    implements $SendMoneyFailedCopyWith<$Res> {
  _$SendMoneyFailedCopyWithImpl(this._self, this._then);

  final SendMoneyFailed _self;
  final $Res Function(SendMoneyFailed) _then;

/// Create a copy of SendMoneyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(SendMoneyFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of SendMoneyState
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
