// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_acc_privacy_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateAccPrivacyState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccPrivacyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateAccPrivacyState()';
}


}

/// @nodoc
class $CreateAccPrivacyStateCopyWith<$Res>  {
$CreateAccPrivacyStateCopyWith(CreateAccPrivacyState _, $Res Function(CreateAccPrivacyState) __);
}


/// @nodoc


class CreateAccPrivacyInitial implements CreateAccPrivacyState {
  const CreateAccPrivacyInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccPrivacyInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateAccPrivacyState.initial()';
}


}




/// @nodoc


class CreateAccPrivacyLoading implements CreateAccPrivacyState {
  const CreateAccPrivacyLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccPrivacyLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateAccPrivacyState.loading()';
}


}




/// @nodoc


class CreateAccPrivacyLoaded implements CreateAccPrivacyState {
  const CreateAccPrivacyLoaded(this.privacy);
  

 final  PrivacyResponse privacy;

/// Create a copy of CreateAccPrivacyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAccPrivacyLoadedCopyWith<CreateAccPrivacyLoaded> get copyWith => _$CreateAccPrivacyLoadedCopyWithImpl<CreateAccPrivacyLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccPrivacyLoaded&&(identical(other.privacy, privacy) || other.privacy == privacy));
}


@override
int get hashCode => Object.hash(runtimeType,privacy);

@override
String toString() {
  return 'CreateAccPrivacyState.loaded(privacy: $privacy)';
}


}

/// @nodoc
abstract mixin class $CreateAccPrivacyLoadedCopyWith<$Res> implements $CreateAccPrivacyStateCopyWith<$Res> {
  factory $CreateAccPrivacyLoadedCopyWith(CreateAccPrivacyLoaded value, $Res Function(CreateAccPrivacyLoaded) _then) = _$CreateAccPrivacyLoadedCopyWithImpl;
@useResult
$Res call({
 PrivacyResponse privacy
});


$PrivacyResponseCopyWith<$Res> get privacy;

}
/// @nodoc
class _$CreateAccPrivacyLoadedCopyWithImpl<$Res>
    implements $CreateAccPrivacyLoadedCopyWith<$Res> {
  _$CreateAccPrivacyLoadedCopyWithImpl(this._self, this._then);

  final CreateAccPrivacyLoaded _self;
  final $Res Function(CreateAccPrivacyLoaded) _then;

/// Create a copy of CreateAccPrivacyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? privacy = null,}) {
  return _then(CreateAccPrivacyLoaded(
null == privacy ? _self.privacy : privacy // ignore: cast_nullable_to_non_nullable
as PrivacyResponse,
  ));
}

/// Create a copy of CreateAccPrivacyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PrivacyResponseCopyWith<$Res> get privacy {
  
  return $PrivacyResponseCopyWith<$Res>(_self.privacy, (value) {
    return _then(_self.copyWith(privacy: value));
  });
}
}

/// @nodoc


class CreateAccPrivacyFailed implements CreateAccPrivacyState {
  const CreateAccPrivacyFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of CreateAccPrivacyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAccPrivacyFailedCopyWith<CreateAccPrivacyFailed> get copyWith => _$CreateAccPrivacyFailedCopyWithImpl<CreateAccPrivacyFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccPrivacyFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'CreateAccPrivacyState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $CreateAccPrivacyFailedCopyWith<$Res> implements $CreateAccPrivacyStateCopyWith<$Res> {
  factory $CreateAccPrivacyFailedCopyWith(CreateAccPrivacyFailed value, $Res Function(CreateAccPrivacyFailed) _then) = _$CreateAccPrivacyFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$CreateAccPrivacyFailedCopyWithImpl<$Res>
    implements $CreateAccPrivacyFailedCopyWith<$Res> {
  _$CreateAccPrivacyFailedCopyWithImpl(this._self, this._then);

  final CreateAccPrivacyFailed _self;
  final $Res Function(CreateAccPrivacyFailed) _then;

/// Create a copy of CreateAccPrivacyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(CreateAccPrivacyFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of CreateAccPrivacyState
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
