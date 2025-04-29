// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_payment_option_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SelectPaymentOptionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectPaymentOptionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SelectPaymentOptionState()';
}


}

/// @nodoc
class $SelectPaymentOptionStateCopyWith<$Res>  {
$SelectPaymentOptionStateCopyWith(SelectPaymentOptionState _, $Res Function(SelectPaymentOptionState) __);
}


/// @nodoc


class SelectPaymentOptionStateInitial implements SelectPaymentOptionState {
  const SelectPaymentOptionStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectPaymentOptionStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SelectPaymentOptionState.initial()';
}


}




/// @nodoc


class SelectPaymentOptionStateLoading implements SelectPaymentOptionState {
  const SelectPaymentOptionStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectPaymentOptionStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SelectPaymentOptionState.loading()';
}


}




/// @nodoc


class SelectPaymentOptionStateLoaded implements SelectPaymentOptionState {
  const SelectPaymentOptionStateLoaded(this.profile);
  

 final  PaymentOption profile;

/// Create a copy of SelectPaymentOptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectPaymentOptionStateLoadedCopyWith<SelectPaymentOptionStateLoaded> get copyWith => _$SelectPaymentOptionStateLoadedCopyWithImpl<SelectPaymentOptionStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectPaymentOptionStateLoaded&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,profile);

@override
String toString() {
  return 'SelectPaymentOptionState.loaded(profile: $profile)';
}


}

/// @nodoc
abstract mixin class $SelectPaymentOptionStateLoadedCopyWith<$Res> implements $SelectPaymentOptionStateCopyWith<$Res> {
  factory $SelectPaymentOptionStateLoadedCopyWith(SelectPaymentOptionStateLoaded value, $Res Function(SelectPaymentOptionStateLoaded) _then) = _$SelectPaymentOptionStateLoadedCopyWithImpl;
@useResult
$Res call({
 PaymentOption profile
});


$PaymentOptionCopyWith<$Res> get profile;

}
/// @nodoc
class _$SelectPaymentOptionStateLoadedCopyWithImpl<$Res>
    implements $SelectPaymentOptionStateLoadedCopyWith<$Res> {
  _$SelectPaymentOptionStateLoadedCopyWithImpl(this._self, this._then);

  final SelectPaymentOptionStateLoaded _self;
  final $Res Function(SelectPaymentOptionStateLoaded) _then;

/// Create a copy of SelectPaymentOptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profile = null,}) {
  return _then(SelectPaymentOptionStateLoaded(
null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as PaymentOption,
  ));
}

/// Create a copy of SelectPaymentOptionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentOptionCopyWith<$Res> get profile {
  
  return $PaymentOptionCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}

/// @nodoc


class SelectPaymentOptionStateFailed implements SelectPaymentOptionState {
  const SelectPaymentOptionStateFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of SelectPaymentOptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectPaymentOptionStateFailedCopyWith<SelectPaymentOptionStateFailed> get copyWith => _$SelectPaymentOptionStateFailedCopyWithImpl<SelectPaymentOptionStateFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectPaymentOptionStateFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'SelectPaymentOptionState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $SelectPaymentOptionStateFailedCopyWith<$Res> implements $SelectPaymentOptionStateCopyWith<$Res> {
  factory $SelectPaymentOptionStateFailedCopyWith(SelectPaymentOptionStateFailed value, $Res Function(SelectPaymentOptionStateFailed) _then) = _$SelectPaymentOptionStateFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$SelectPaymentOptionStateFailedCopyWithImpl<$Res>
    implements $SelectPaymentOptionStateFailedCopyWith<$Res> {
  _$SelectPaymentOptionStateFailedCopyWithImpl(this._self, this._then);

  final SelectPaymentOptionStateFailed _self;
  final $Res Function(SelectPaymentOptionStateFailed) _then;

/// Create a copy of SelectPaymentOptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(SelectPaymentOptionStateFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of SelectPaymentOptionState
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
