// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddCardState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCardState()';
}


}

/// @nodoc
class $AddCardStateCopyWith<$Res>  {
$AddCardStateCopyWith(AddCardState _, $Res Function(AddCardState) __);
}


/// @nodoc


class AddCardInitial implements AddCardState {
  const AddCardInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCardState.initial()';
}


}




/// @nodoc


class AddCardLoading implements AddCardState {
  const AddCardLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCardState.loading()';
}


}




/// @nodoc


class AddCardLoaded implements AddCardState {
  const AddCardLoaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardLoaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddCardState.loaded()';
}


}




/// @nodoc


class AddCardFailed implements AddCardState {
  const AddCardFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of AddCardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCardFailedCopyWith<AddCardFailed> get copyWith => _$AddCardFailedCopyWithImpl<AddCardFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'AddCardState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $AddCardFailedCopyWith<$Res> implements $AddCardStateCopyWith<$Res> {
  factory $AddCardFailedCopyWith(AddCardFailed value, $Res Function(AddCardFailed) _then) = _$AddCardFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$AddCardFailedCopyWithImpl<$Res>
    implements $AddCardFailedCopyWith<$Res> {
  _$AddCardFailedCopyWithImpl(this._self, this._then);

  final AddCardFailed _self;
  final $Res Function(AddCardFailed) _then;

/// Create a copy of AddCardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(AddCardFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of AddCardState
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
