// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_money_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RequestMoneyState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestMoneyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RequestMoneyState()';
}


}

/// @nodoc
class $RequestMoneyStateCopyWith<$Res>  {
$RequestMoneyStateCopyWith(RequestMoneyState _, $Res Function(RequestMoneyState) __);
}


/// @nodoc


class RequestMoneyInitial implements RequestMoneyState {
  const RequestMoneyInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestMoneyInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RequestMoneyState.initial()';
}


}




/// @nodoc


class RequestMoneyLoading implements RequestMoneyState {
  const RequestMoneyLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestMoneyLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RequestMoneyState.loading()';
}


}




/// @nodoc


class RequestMoneyLoaded implements RequestMoneyState {
  const RequestMoneyLoaded(this.response);
  

 final  RequestMoneyResponse response;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestMoneyLoadedCopyWith<RequestMoneyLoaded> get copyWith => _$RequestMoneyLoadedCopyWithImpl<RequestMoneyLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestMoneyLoaded&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'RequestMoneyState.loaded(response: $response)';
}


}

/// @nodoc
abstract mixin class $RequestMoneyLoadedCopyWith<$Res> implements $RequestMoneyStateCopyWith<$Res> {
  factory $RequestMoneyLoadedCopyWith(RequestMoneyLoaded value, $Res Function(RequestMoneyLoaded) _then) = _$RequestMoneyLoadedCopyWithImpl;
@useResult
$Res call({
 RequestMoneyResponse response
});


$RequestMoneyResponseCopyWith<$Res> get response;

}
/// @nodoc
class _$RequestMoneyLoadedCopyWithImpl<$Res>
    implements $RequestMoneyLoadedCopyWith<$Res> {
  _$RequestMoneyLoadedCopyWithImpl(this._self, this._then);

  final RequestMoneyLoaded _self;
  final $Res Function(RequestMoneyLoaded) _then;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(RequestMoneyLoaded(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as RequestMoneyResponse,
  ));
}

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestMoneyResponseCopyWith<$Res> get response {
  
  return $RequestMoneyResponseCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}

/// @nodoc


class RequestMoneyFailed implements RequestMoneyState {
  const RequestMoneyFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestMoneyFailedCopyWith<RequestMoneyFailed> get copyWith => _$RequestMoneyFailedCopyWithImpl<RequestMoneyFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestMoneyFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'RequestMoneyState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $RequestMoneyFailedCopyWith<$Res> implements $RequestMoneyStateCopyWith<$Res> {
  factory $RequestMoneyFailedCopyWith(RequestMoneyFailed value, $Res Function(RequestMoneyFailed) _then) = _$RequestMoneyFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$RequestMoneyFailedCopyWithImpl<$Res>
    implements $RequestMoneyFailedCopyWith<$Res> {
  _$RequestMoneyFailedCopyWithImpl(this._self, this._then);

  final RequestMoneyFailed _self;
  final $Res Function(RequestMoneyFailed) _then;

/// Create a copy of RequestMoneyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(RequestMoneyFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of RequestMoneyState
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
