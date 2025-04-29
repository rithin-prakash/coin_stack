// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BalanceState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BalanceState()';
}


}

/// @nodoc
class $BalanceStateCopyWith<$Res>  {
$BalanceStateCopyWith(BalanceState _, $Res Function(BalanceState) __);
}


/// @nodoc


class BalanceInitial implements BalanceState {
  const BalanceInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BalanceState.initial()';
}


}




/// @nodoc


class BalanceLoading implements BalanceState {
  const BalanceLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BalanceState.loading()';
}


}




/// @nodoc


class BalanceLoaded implements BalanceState {
  const BalanceLoaded(this.balance);
  

 final  double balance;

/// Create a copy of BalanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalanceLoadedCopyWith<BalanceLoaded> get copyWith => _$BalanceLoadedCopyWithImpl<BalanceLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceLoaded&&(identical(other.balance, balance) || other.balance == balance));
}


@override
int get hashCode => Object.hash(runtimeType,balance);

@override
String toString() {
  return 'BalanceState.loaded(balance: $balance)';
}


}

/// @nodoc
abstract mixin class $BalanceLoadedCopyWith<$Res> implements $BalanceStateCopyWith<$Res> {
  factory $BalanceLoadedCopyWith(BalanceLoaded value, $Res Function(BalanceLoaded) _then) = _$BalanceLoadedCopyWithImpl;
@useResult
$Res call({
 double balance
});




}
/// @nodoc
class _$BalanceLoadedCopyWithImpl<$Res>
    implements $BalanceLoadedCopyWith<$Res> {
  _$BalanceLoadedCopyWithImpl(this._self, this._then);

  final BalanceLoaded _self;
  final $Res Function(BalanceLoaded) _then;

/// Create a copy of BalanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? balance = null,}) {
  return _then(BalanceLoaded(
null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class BalanceFailed implements BalanceState {
  const BalanceFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of BalanceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BalanceFailedCopyWith<BalanceFailed> get copyWith => _$BalanceFailedCopyWithImpl<BalanceFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BalanceFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'BalanceState.failed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $BalanceFailedCopyWith<$Res> implements $BalanceStateCopyWith<$Res> {
  factory $BalanceFailedCopyWith(BalanceFailed value, $Res Function(BalanceFailed) _then) = _$BalanceFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$BalanceFailedCopyWithImpl<$Res>
    implements $BalanceFailedCopyWith<$Res> {
  _$BalanceFailedCopyWithImpl(this._self, this._then);

  final BalanceFailed _self;
  final $Res Function(BalanceFailed) _then;

/// Create a copy of BalanceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(BalanceFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of BalanceState
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
