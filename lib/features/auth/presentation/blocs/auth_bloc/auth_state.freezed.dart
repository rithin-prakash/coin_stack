// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// @nodoc


class AuthInitial implements AuthState {
  const AuthInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class AuthLoading implements AuthState {
  const AuthLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc


class AuthLoaded implements AuthState {
  const AuthLoaded(this.loggedIn);
  

 final  bool loggedIn;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthLoadedCopyWith<AuthLoaded> get copyWith => _$AuthLoadedCopyWithImpl<AuthLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthLoaded&&(identical(other.loggedIn, loggedIn) || other.loggedIn == loggedIn));
}


@override
int get hashCode => Object.hash(runtimeType,loggedIn);

@override
String toString() {
  return 'AuthState.loaded(loggedIn: $loggedIn)';
}


}

/// @nodoc
abstract mixin class $AuthLoadedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthLoadedCopyWith(AuthLoaded value, $Res Function(AuthLoaded) _then) = _$AuthLoadedCopyWithImpl;
@useResult
$Res call({
 bool loggedIn
});




}
/// @nodoc
class _$AuthLoadedCopyWithImpl<$Res>
    implements $AuthLoadedCopyWith<$Res> {
  _$AuthLoadedCopyWithImpl(this._self, this._then);

  final AuthLoaded _self;
  final $Res Function(AuthLoaded) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loggedIn = null,}) {
  return _then(AuthLoaded(
null == loggedIn ? _self.loggedIn : loggedIn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class AuthFailed implements AuthState {
  const AuthFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthFailedCopyWith<AuthFailed> get copyWith => _$AuthFailedCopyWithImpl<AuthFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'AuthState.failed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $AuthFailedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthFailedCopyWith(AuthFailed value, $Res Function(AuthFailed) _then) = _$AuthFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$AuthFailedCopyWithImpl<$Res>
    implements $AuthFailedCopyWith<$Res> {
  _$AuthFailedCopyWithImpl(this._self, this._then);

  final AuthFailed _self;
  final $Res Function(AuthFailed) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(AuthFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of AuthState
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
