// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'txn_history_graph_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TxnHistoryGraphState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnHistoryGraphState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TxnHistoryGraphState()';
}


}

/// @nodoc
class $TxnHistoryGraphStateCopyWith<$Res>  {
$TxnHistoryGraphStateCopyWith(TxnHistoryGraphState _, $Res Function(TxnHistoryGraphState) __);
}


/// @nodoc


class TxnHistoryGraphInitial implements TxnHistoryGraphState {
  const TxnHistoryGraphInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnHistoryGraphInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TxnHistoryGraphState.initial()';
}


}




/// @nodoc


class TxnHistoryGraphLoading implements TxnHistoryGraphState {
  const TxnHistoryGraphLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnHistoryGraphLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TxnHistoryGraphState.loading()';
}


}




/// @nodoc


class TxnHistoryGraphLoaded implements TxnHistoryGraphState {
  const TxnHistoryGraphLoaded(this.res);
  

 final  TxnHistoryGraphResponse res;

/// Create a copy of TxnHistoryGraphState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxnHistoryGraphLoadedCopyWith<TxnHistoryGraphLoaded> get copyWith => _$TxnHistoryGraphLoadedCopyWithImpl<TxnHistoryGraphLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnHistoryGraphLoaded&&(identical(other.res, res) || other.res == res));
}


@override
int get hashCode => Object.hash(runtimeType,res);

@override
String toString() {
  return 'TxnHistoryGraphState.loaded(res: $res)';
}


}

/// @nodoc
abstract mixin class $TxnHistoryGraphLoadedCopyWith<$Res> implements $TxnHistoryGraphStateCopyWith<$Res> {
  factory $TxnHistoryGraphLoadedCopyWith(TxnHistoryGraphLoaded value, $Res Function(TxnHistoryGraphLoaded) _then) = _$TxnHistoryGraphLoadedCopyWithImpl;
@useResult
$Res call({
 TxnHistoryGraphResponse res
});


$TxnHistoryGraphResponseCopyWith<$Res> get res;

}
/// @nodoc
class _$TxnHistoryGraphLoadedCopyWithImpl<$Res>
    implements $TxnHistoryGraphLoadedCopyWith<$Res> {
  _$TxnHistoryGraphLoadedCopyWithImpl(this._self, this._then);

  final TxnHistoryGraphLoaded _self;
  final $Res Function(TxnHistoryGraphLoaded) _then;

/// Create a copy of TxnHistoryGraphState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? res = null,}) {
  return _then(TxnHistoryGraphLoaded(
null == res ? _self.res : res // ignore: cast_nullable_to_non_nullable
as TxnHistoryGraphResponse,
  ));
}

/// Create a copy of TxnHistoryGraphState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TxnHistoryGraphResponseCopyWith<$Res> get res {
  
  return $TxnHistoryGraphResponseCopyWith<$Res>(_self.res, (value) {
    return _then(_self.copyWith(res: value));
  });
}
}

/// @nodoc


class TxnHistoryGraphFailed implements TxnHistoryGraphState {
  const TxnHistoryGraphFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of TxnHistoryGraphState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxnHistoryGraphFailedCopyWith<TxnHistoryGraphFailed> get copyWith => _$TxnHistoryGraphFailedCopyWithImpl<TxnHistoryGraphFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnHistoryGraphFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'TxnHistoryGraphState.failed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $TxnHistoryGraphFailedCopyWith<$Res> implements $TxnHistoryGraphStateCopyWith<$Res> {
  factory $TxnHistoryGraphFailedCopyWith(TxnHistoryGraphFailed value, $Res Function(TxnHistoryGraphFailed) _then) = _$TxnHistoryGraphFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$TxnHistoryGraphFailedCopyWithImpl<$Res>
    implements $TxnHistoryGraphFailedCopyWith<$Res> {
  _$TxnHistoryGraphFailedCopyWithImpl(this._self, this._then);

  final TxnHistoryGraphFailed _self;
  final $Res Function(TxnHistoryGraphFailed) _then;

/// Create a copy of TxnHistoryGraphState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(TxnHistoryGraphFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of TxnHistoryGraphState
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
