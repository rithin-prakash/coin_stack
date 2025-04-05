// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SelectProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SelectProfileState()';
}


}

/// @nodoc
class $SelectProfileStateCopyWith<$Res>  {
$SelectProfileStateCopyWith(SelectProfileState _, $Res Function(SelectProfileState) __);
}


/// @nodoc


class SelectProfileInitial implements SelectProfileState {
  const SelectProfileInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectProfileInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SelectProfileState.initial()';
}


}




/// @nodoc


class SelectProfileLoading implements SelectProfileState {
  const SelectProfileLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectProfileLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SelectProfileState.loading()';
}


}




/// @nodoc


class SelectProfileLoaded implements SelectProfileState {
  const SelectProfileLoaded(this.profile);
  

 final  ConnectedProfile profile;

/// Create a copy of SelectProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectProfileLoadedCopyWith<SelectProfileLoaded> get copyWith => _$SelectProfileLoadedCopyWithImpl<SelectProfileLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectProfileLoaded&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,profile);

@override
String toString() {
  return 'SelectProfileState.loaded(profile: $profile)';
}


}

/// @nodoc
abstract mixin class $SelectProfileLoadedCopyWith<$Res> implements $SelectProfileStateCopyWith<$Res> {
  factory $SelectProfileLoadedCopyWith(SelectProfileLoaded value, $Res Function(SelectProfileLoaded) _then) = _$SelectProfileLoadedCopyWithImpl;
@useResult
$Res call({
 ConnectedProfile profile
});


$ConnectedProfileCopyWith<$Res> get profile;

}
/// @nodoc
class _$SelectProfileLoadedCopyWithImpl<$Res>
    implements $SelectProfileLoadedCopyWith<$Res> {
  _$SelectProfileLoadedCopyWithImpl(this._self, this._then);

  final SelectProfileLoaded _self;
  final $Res Function(SelectProfileLoaded) _then;

/// Create a copy of SelectProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profile = null,}) {
  return _then(SelectProfileLoaded(
null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ConnectedProfile,
  ));
}

/// Create a copy of SelectProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectedProfileCopyWith<$Res> get profile {
  
  return $ConnectedProfileCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

/// @nodoc


class SelectProfileFailed implements SelectProfileState {
  const SelectProfileFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of SelectProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectProfileFailedCopyWith<SelectProfileFailed> get copyWith => _$SelectProfileFailedCopyWithImpl<SelectProfileFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectProfileFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'SelectProfileState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $SelectProfileFailedCopyWith<$Res> implements $SelectProfileStateCopyWith<$Res> {
  factory $SelectProfileFailedCopyWith(SelectProfileFailed value, $Res Function(SelectProfileFailed) _then) = _$SelectProfileFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$SelectProfileFailedCopyWithImpl<$Res>
    implements $SelectProfileFailedCopyWith<$Res> {
  _$SelectProfileFailedCopyWithImpl(this._self, this._then);

  final SelectProfileFailed _self;
  final $Res Function(SelectProfileFailed) _then;

/// Create a copy of SelectProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(SelectProfileFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of SelectProfileState
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
