// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_address_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateAddressState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAddressState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateAddressState()';
}


}

/// @nodoc
class $UpdateAddressStateCopyWith<$Res>  {
$UpdateAddressStateCopyWith(UpdateAddressState _, $Res Function(UpdateAddressState) __);
}


/// @nodoc


class UpdateAddressInitial implements UpdateAddressState {
  const UpdateAddressInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAddressInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateAddressState.initial()';
}


}




/// @nodoc


class UpdateAddressLoading implements UpdateAddressState {
  const UpdateAddressLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAddressLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateAddressState.loading()';
}


}




/// @nodoc


class UpdateAddressFailure implements UpdateAddressState {
  const UpdateAddressFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of UpdateAddressState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateAddressFailureCopyWith<UpdateAddressFailure> get copyWith => _$UpdateAddressFailureCopyWithImpl<UpdateAddressFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAddressFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'UpdateAddressState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $UpdateAddressFailureCopyWith<$Res> implements $UpdateAddressStateCopyWith<$Res> {
  factory $UpdateAddressFailureCopyWith(UpdateAddressFailure value, $Res Function(UpdateAddressFailure) _then) = _$UpdateAddressFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$UpdateAddressFailureCopyWithImpl<$Res>
    implements $UpdateAddressFailureCopyWith<$Res> {
  _$UpdateAddressFailureCopyWithImpl(this._self, this._then);

  final UpdateAddressFailure _self;
  final $Res Function(UpdateAddressFailure) _then;

/// Create a copy of UpdateAddressState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(UpdateAddressFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of UpdateAddressState
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


class UpdateAddressSuccess implements UpdateAddressState {
  const UpdateAddressSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAddressSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateAddressState.success()';
}


}




// dart format on
