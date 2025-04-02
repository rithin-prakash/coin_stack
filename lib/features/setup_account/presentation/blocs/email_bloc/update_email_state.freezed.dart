// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_email_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateEmailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEmailState()';
}


}

/// @nodoc
class $UpdateEmailStateCopyWith<$Res>  {
$UpdateEmailStateCopyWith(UpdateEmailState _, $Res Function(UpdateEmailState) __);
}


/// @nodoc


class UpdateEmailInitial implements UpdateEmailState {
  const UpdateEmailInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmailInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEmailState.initial()';
}


}




/// @nodoc


class UpdateEmailLoading implements UpdateEmailState {
  const UpdateEmailLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmailLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEmailState.loading()';
}


}




/// @nodoc


class UpdateEmailFailure implements UpdateEmailState {
  const UpdateEmailFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of UpdateEmailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateEmailFailureCopyWith<UpdateEmailFailure> get copyWith => _$UpdateEmailFailureCopyWithImpl<UpdateEmailFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmailFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'UpdateEmailState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $UpdateEmailFailureCopyWith<$Res> implements $UpdateEmailStateCopyWith<$Res> {
  factory $UpdateEmailFailureCopyWith(UpdateEmailFailure value, $Res Function(UpdateEmailFailure) _then) = _$UpdateEmailFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$UpdateEmailFailureCopyWithImpl<$Res>
    implements $UpdateEmailFailureCopyWith<$Res> {
  _$UpdateEmailFailureCopyWithImpl(this._self, this._then);

  final UpdateEmailFailure _self;
  final $Res Function(UpdateEmailFailure) _then;

/// Create a copy of UpdateEmailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(UpdateEmailFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of UpdateEmailState
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


class UpdateEmailSuccess implements UpdateEmailState {
  const UpdateEmailSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEmailSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEmailState.success()';
}


}




// dart format on
