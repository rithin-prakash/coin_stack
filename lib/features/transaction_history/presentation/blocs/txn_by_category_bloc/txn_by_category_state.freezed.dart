// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'txn_by_category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TxnByCategoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnByCategoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TxnByCategoryState()';
}


}

/// @nodoc
class $TxnByCategoryStateCopyWith<$Res>  {
$TxnByCategoryStateCopyWith(TxnByCategoryState _, $Res Function(TxnByCategoryState) __);
}


/// @nodoc


class TxnByCategoryInitial implements TxnByCategoryState {
  const TxnByCategoryInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnByCategoryInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TxnByCategoryState.initial()';
}


}




/// @nodoc


class TxnByCategoryLoading implements TxnByCategoryState {
  const TxnByCategoryLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnByCategoryLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TxnByCategoryState.loading()';
}


}




/// @nodoc


class TxnByCategoryLoaded implements TxnByCategoryState {
  const TxnByCategoryLoaded(this.history);
  

 final  TxnHistoryByCategory history;

/// Create a copy of TxnByCategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxnByCategoryLoadedCopyWith<TxnByCategoryLoaded> get copyWith => _$TxnByCategoryLoadedCopyWithImpl<TxnByCategoryLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnByCategoryLoaded&&(identical(other.history, history) || other.history == history));
}


@override
int get hashCode => Object.hash(runtimeType,history);

@override
String toString() {
  return 'TxnByCategoryState.loaded(history: $history)';
}


}

/// @nodoc
abstract mixin class $TxnByCategoryLoadedCopyWith<$Res> implements $TxnByCategoryStateCopyWith<$Res> {
  factory $TxnByCategoryLoadedCopyWith(TxnByCategoryLoaded value, $Res Function(TxnByCategoryLoaded) _then) = _$TxnByCategoryLoadedCopyWithImpl;
@useResult
$Res call({
 TxnHistoryByCategory history
});


$TxnHistoryByCategoryCopyWith<$Res> get history;

}
/// @nodoc
class _$TxnByCategoryLoadedCopyWithImpl<$Res>
    implements $TxnByCategoryLoadedCopyWith<$Res> {
  _$TxnByCategoryLoadedCopyWithImpl(this._self, this._then);

  final TxnByCategoryLoaded _self;
  final $Res Function(TxnByCategoryLoaded) _then;

/// Create a copy of TxnByCategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? history = null,}) {
  return _then(TxnByCategoryLoaded(
null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as TxnHistoryByCategory,
  ));
}

/// Create a copy of TxnByCategoryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TxnHistoryByCategoryCopyWith<$Res> get history {
  
  return $TxnHistoryByCategoryCopyWith<$Res>(_self.history, (value) {
    return _then(_self.copyWith(history: value));
  });
}
}

/// @nodoc


class TxnByCategoryFailed implements TxnByCategoryState {
  const TxnByCategoryFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of TxnByCategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxnByCategoryFailedCopyWith<TxnByCategoryFailed> get copyWith => _$TxnByCategoryFailedCopyWithImpl<TxnByCategoryFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnByCategoryFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'TxnByCategoryState.failed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $TxnByCategoryFailedCopyWith<$Res> implements $TxnByCategoryStateCopyWith<$Res> {
  factory $TxnByCategoryFailedCopyWith(TxnByCategoryFailed value, $Res Function(TxnByCategoryFailed) _then) = _$TxnByCategoryFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$TxnByCategoryFailedCopyWithImpl<$Res>
    implements $TxnByCategoryFailedCopyWith<$Res> {
  _$TxnByCategoryFailedCopyWithImpl(this._self, this._then);

  final TxnByCategoryFailed _self;
  final $Res Function(TxnByCategoryFailed) _then;

/// Create a copy of TxnByCategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(TxnByCategoryFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of TxnByCategoryState
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
