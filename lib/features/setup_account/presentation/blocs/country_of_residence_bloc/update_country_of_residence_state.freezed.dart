// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_country_of_residence_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateCountryOfResidenceState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCountryOfResidenceState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateCountryOfResidenceState()';
}


}

/// @nodoc
class $UpdateCountryOfResidenceStateCopyWith<$Res>  {
$UpdateCountryOfResidenceStateCopyWith(UpdateCountryOfResidenceState _, $Res Function(UpdateCountryOfResidenceState) __);
}


/// @nodoc


class UpdateCountryOfResidenceInitial implements UpdateCountryOfResidenceState {
  const UpdateCountryOfResidenceInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCountryOfResidenceInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateCountryOfResidenceState.initial()';
}


}




/// @nodoc


class UpdateCountryOfResidenceLoading implements UpdateCountryOfResidenceState {
  const UpdateCountryOfResidenceLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCountryOfResidenceLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateCountryOfResidenceState.loading()';
}


}




/// @nodoc


class UpdateCountryOfResidenceFailure implements UpdateCountryOfResidenceState {
  const UpdateCountryOfResidenceFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of UpdateCountryOfResidenceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCountryOfResidenceFailureCopyWith<UpdateCountryOfResidenceFailure> get copyWith => _$UpdateCountryOfResidenceFailureCopyWithImpl<UpdateCountryOfResidenceFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCountryOfResidenceFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'UpdateCountryOfResidenceState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $UpdateCountryOfResidenceFailureCopyWith<$Res> implements $UpdateCountryOfResidenceStateCopyWith<$Res> {
  factory $UpdateCountryOfResidenceFailureCopyWith(UpdateCountryOfResidenceFailure value, $Res Function(UpdateCountryOfResidenceFailure) _then) = _$UpdateCountryOfResidenceFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$UpdateCountryOfResidenceFailureCopyWithImpl<$Res>
    implements $UpdateCountryOfResidenceFailureCopyWith<$Res> {
  _$UpdateCountryOfResidenceFailureCopyWithImpl(this._self, this._then);

  final UpdateCountryOfResidenceFailure _self;
  final $Res Function(UpdateCountryOfResidenceFailure) _then;

/// Create a copy of UpdateCountryOfResidenceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(UpdateCountryOfResidenceFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of UpdateCountryOfResidenceState
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


class UpdateCountryOfResidenceSuccess implements UpdateCountryOfResidenceState {
  const UpdateCountryOfResidenceSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCountryOfResidenceSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateCountryOfResidenceState.success()';
}


}




// dart format on
