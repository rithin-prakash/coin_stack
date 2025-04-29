// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_acc_tnc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateAccTncState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccTncState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateAccTncState()';
}


}

/// @nodoc
class $CreateAccTncStateCopyWith<$Res>  {
$CreateAccTncStateCopyWith(CreateAccTncState _, $Res Function(CreateAccTncState) __);
}


/// @nodoc


class CreateAccTncInitial implements CreateAccTncState {
  const CreateAccTncInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccTncInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateAccTncState.initial()';
}


}




/// @nodoc


class CreateAccTncLoading implements CreateAccTncState {
  const CreateAccTncLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccTncLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateAccTncState.loading()';
}


}




/// @nodoc


class CreateAccTncLoaded implements CreateAccTncState {
  const CreateAccTncLoaded(this.tnc);
  

 final  TncResponse tnc;

/// Create a copy of CreateAccTncState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAccTncLoadedCopyWith<CreateAccTncLoaded> get copyWith => _$CreateAccTncLoadedCopyWithImpl<CreateAccTncLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccTncLoaded&&(identical(other.tnc, tnc) || other.tnc == tnc));
}


@override
int get hashCode => Object.hash(runtimeType,tnc);

@override
String toString() {
  return 'CreateAccTncState.loaded(tnc: $tnc)';
}


}

/// @nodoc
abstract mixin class $CreateAccTncLoadedCopyWith<$Res> implements $CreateAccTncStateCopyWith<$Res> {
  factory $CreateAccTncLoadedCopyWith(CreateAccTncLoaded value, $Res Function(CreateAccTncLoaded) _then) = _$CreateAccTncLoadedCopyWithImpl;
@useResult
$Res call({
 TncResponse tnc
});


$TncResponseCopyWith<$Res> get tnc;

}
/// @nodoc
class _$CreateAccTncLoadedCopyWithImpl<$Res>
    implements $CreateAccTncLoadedCopyWith<$Res> {
  _$CreateAccTncLoadedCopyWithImpl(this._self, this._then);

  final CreateAccTncLoaded _self;
  final $Res Function(CreateAccTncLoaded) _then;

/// Create a copy of CreateAccTncState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tnc = null,}) {
  return _then(CreateAccTncLoaded(
null == tnc ? _self.tnc : tnc // ignore: cast_nullable_to_non_nullable
as TncResponse,
  ));
}

/// Create a copy of CreateAccTncState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TncResponseCopyWith<$Res> get tnc {
  
  return $TncResponseCopyWith<$Res>(_self.tnc, (value) {
    return _then(_self.copyWith(tnc: value));
  });
}
}

/// @nodoc


class CreateAccTncFailed implements CreateAccTncState {
  const CreateAccTncFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of CreateAccTncState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAccTncFailedCopyWith<CreateAccTncFailed> get copyWith => _$CreateAccTncFailedCopyWithImpl<CreateAccTncFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAccTncFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'CreateAccTncState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $CreateAccTncFailedCopyWith<$Res> implements $CreateAccTncStateCopyWith<$Res> {
  factory $CreateAccTncFailedCopyWith(CreateAccTncFailed value, $Res Function(CreateAccTncFailed) _then) = _$CreateAccTncFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$CreateAccTncFailedCopyWithImpl<$Res>
    implements $CreateAccTncFailedCopyWith<$Res> {
  _$CreateAccTncFailedCopyWithImpl(this._self, this._then);

  final CreateAccTncFailed _self;
  final $Res Function(CreateAccTncFailed) _then;

/// Create a copy of CreateAccTncState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(CreateAccTncFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of CreateAccTncState
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
