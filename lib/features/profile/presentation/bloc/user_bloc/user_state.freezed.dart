// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState()';
}


}

/// @nodoc
class $UserStateCopyWith<$Res>  {
$UserStateCopyWith(UserState _, $Res Function(UserState) __);
}


/// @nodoc


class UserInitial implements UserState {
  const UserInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState.initial()';
}


}




/// @nodoc


class UserLoading implements UserState {
  const UserLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState.loading()';
}


}




/// @nodoc


class UserLoaded implements UserState {
  const UserLoaded(this.u);
  

 final  User u;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserLoadedCopyWith<UserLoaded> get copyWith => _$UserLoadedCopyWithImpl<UserLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLoaded&&(identical(other.u, u) || other.u == u));
}


@override
int get hashCode => Object.hash(runtimeType,u);

@override
String toString() {
  return 'UserState.loaded(u: $u)';
}


}

/// @nodoc
abstract mixin class $UserLoadedCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $UserLoadedCopyWith(UserLoaded value, $Res Function(UserLoaded) _then) = _$UserLoadedCopyWithImpl;
@useResult
$Res call({
 User u
});


$UserCopyWith<$Res> get u;

}
/// @nodoc
class _$UserLoadedCopyWithImpl<$Res>
    implements $UserLoadedCopyWith<$Res> {
  _$UserLoadedCopyWithImpl(this._self, this._then);

  final UserLoaded _self;
  final $Res Function(UserLoaded) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? u = null,}) {
  return _then(UserLoaded(
null == u ? _self.u : u // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get u {
  
  return $UserCopyWith<$Res>(_self.u, (value) {
    return _then(_self.copyWith(u: value));
  });
}
}

/// @nodoc


class UserFailed implements UserState {
  const UserFailed(this.f);
  

 final  Failure f;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserFailedCopyWith<UserFailed> get copyWith => _$UserFailedCopyWithImpl<UserFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserFailed&&(identical(other.f, f) || other.f == f));
}


@override
int get hashCode => Object.hash(runtimeType,f);

@override
String toString() {
  return 'UserState.failure(f: $f)';
}


}

/// @nodoc
abstract mixin class $UserFailedCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $UserFailedCopyWith(UserFailed value, $Res Function(UserFailed) _then) = _$UserFailedCopyWithImpl;
@useResult
$Res call({
 Failure f
});


$FailureCopyWith<$Res> get f;

}
/// @nodoc
class _$UserFailedCopyWithImpl<$Res>
    implements $UserFailedCopyWith<$Res> {
  _$UserFailedCopyWithImpl(this._self, this._then);

  final UserFailed _self;
  final $Res Function(UserFailed) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? f = null,}) {
  return _then(UserFailed(
null == f ? _self.f : f // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res> get f {
  
  return $FailureCopyWith<$Res>(_self.f, (value) {
    return _then(_self.copyWith(f: value));
  });
}
}

// dart format on
