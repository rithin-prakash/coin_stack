// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_personal_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdatePersonalInfoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePersonalInfoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdatePersonalInfoState()';
}


}

/// @nodoc
class $UpdatePersonalInfoStateCopyWith<$Res>  {
$UpdatePersonalInfoStateCopyWith(UpdatePersonalInfoState _, $Res Function(UpdatePersonalInfoState) __);
}


/// @nodoc


class UpdatePersonalInfoInitial implements UpdatePersonalInfoState {
  const UpdatePersonalInfoInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePersonalInfoInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdatePersonalInfoState.initial()';
}


}




/// @nodoc


class UpdatePersonalInfoLoading implements UpdatePersonalInfoState {
  const UpdatePersonalInfoLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePersonalInfoLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdatePersonalInfoState.loading()';
}


}




/// @nodoc


class UpdatePersonalInfoFailure implements UpdatePersonalInfoState {
  const UpdatePersonalInfoFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of UpdatePersonalInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePersonalInfoFailureCopyWith<UpdatePersonalInfoFailure> get copyWith => _$UpdatePersonalInfoFailureCopyWithImpl<UpdatePersonalInfoFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePersonalInfoFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'UpdatePersonalInfoState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $UpdatePersonalInfoFailureCopyWith<$Res> implements $UpdatePersonalInfoStateCopyWith<$Res> {
  factory $UpdatePersonalInfoFailureCopyWith(UpdatePersonalInfoFailure value, $Res Function(UpdatePersonalInfoFailure) _then) = _$UpdatePersonalInfoFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$UpdatePersonalInfoFailureCopyWithImpl<$Res>
    implements $UpdatePersonalInfoFailureCopyWith<$Res> {
  _$UpdatePersonalInfoFailureCopyWithImpl(this._self, this._then);

  final UpdatePersonalInfoFailure _self;
  final $Res Function(UpdatePersonalInfoFailure) _then;

/// Create a copy of UpdatePersonalInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(UpdatePersonalInfoFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of UpdatePersonalInfoState
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


class UpdatePersonalInfoSuccess implements UpdatePersonalInfoState {
  const UpdatePersonalInfoSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePersonalInfoSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdatePersonalInfoState.success()';
}


}




// dart format on
