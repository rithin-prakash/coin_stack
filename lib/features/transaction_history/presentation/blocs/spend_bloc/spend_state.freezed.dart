// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spend_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SpendState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpendState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpendState()';
}


}

/// @nodoc
class $SpendStateCopyWith<$Res>  {
$SpendStateCopyWith(SpendState _, $Res Function(SpendState) __);
}


/// @nodoc


class SpendInitial implements SpendState {
  const SpendInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpendInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpendState.initial()';
}


}




/// @nodoc


class SpendLoading implements SpendState {
  const SpendLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpendLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpendState.loading()';
}


}




/// @nodoc


class SpendLoaded implements SpendState {
  const SpendLoaded(this.spend);
  

 final  double spend;

/// Create a copy of SpendState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpendLoadedCopyWith<SpendLoaded> get copyWith => _$SpendLoadedCopyWithImpl<SpendLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpendLoaded&&(identical(other.spend, spend) || other.spend == spend));
}


@override
int get hashCode => Object.hash(runtimeType,spend);

@override
String toString() {
  return 'SpendState.loaded(spend: $spend)';
}


}

/// @nodoc
abstract mixin class $SpendLoadedCopyWith<$Res> implements $SpendStateCopyWith<$Res> {
  factory $SpendLoadedCopyWith(SpendLoaded value, $Res Function(SpendLoaded) _then) = _$SpendLoadedCopyWithImpl;
@useResult
$Res call({
 double spend
});




}
/// @nodoc
class _$SpendLoadedCopyWithImpl<$Res>
    implements $SpendLoadedCopyWith<$Res> {
  _$SpendLoadedCopyWithImpl(this._self, this._then);

  final SpendLoaded _self;
  final $Res Function(SpendLoaded) _then;

/// Create a copy of SpendState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? spend = null,}) {
  return _then(SpendLoaded(
null == spend ? _self.spend : spend // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class SpendFailed implements SpendState {
  const SpendFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of SpendState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpendFailedCopyWith<SpendFailed> get copyWith => _$SpendFailedCopyWithImpl<SpendFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpendFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'SpendState.failed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $SpendFailedCopyWith<$Res> implements $SpendStateCopyWith<$Res> {
  factory $SpendFailedCopyWith(SpendFailed value, $Res Function(SpendFailed) _then) = _$SpendFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$SpendFailedCopyWithImpl<$Res>
    implements $SpendFailedCopyWith<$Res> {
  _$SpendFailedCopyWithImpl(this._self, this._then);

  final SpendFailed _self;
  final $Res Function(SpendFailed) _then;

/// Create a copy of SpendState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(SpendFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of SpendState
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
