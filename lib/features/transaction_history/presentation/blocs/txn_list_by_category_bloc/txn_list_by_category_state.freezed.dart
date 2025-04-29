// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'txn_list_by_category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TxnListByCategoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnListByCategoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TxnListByCategoryState()';
}


}

/// @nodoc
class $TxnListByCategoryStateCopyWith<$Res>  {
$TxnListByCategoryStateCopyWith(TxnListByCategoryState _, $Res Function(TxnListByCategoryState) __);
}


/// @nodoc


class TxnListByCategoryInitial implements TxnListByCategoryState {
  const TxnListByCategoryInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnListByCategoryInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TxnListByCategoryState.initial()';
}


}




/// @nodoc


class TxnListByCategoryLoading implements TxnListByCategoryState {
  const TxnListByCategoryLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnListByCategoryLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TxnListByCategoryState.loading()';
}


}




/// @nodoc


class TxnListByCategoryLoaded implements TxnListByCategoryState {
  const TxnListByCategoryLoaded(final  List<TransactionItem> list): _list = list;
  

 final  List<TransactionItem> _list;
 List<TransactionItem> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}


/// Create a copy of TxnListByCategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxnListByCategoryLoadedCopyWith<TxnListByCategoryLoaded> get copyWith => _$TxnListByCategoryLoadedCopyWithImpl<TxnListByCategoryLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnListByCategoryLoaded&&const DeepCollectionEquality().equals(other._list, _list));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list));

@override
String toString() {
  return 'TxnListByCategoryState.loaded(list: $list)';
}


}

/// @nodoc
abstract mixin class $TxnListByCategoryLoadedCopyWith<$Res> implements $TxnListByCategoryStateCopyWith<$Res> {
  factory $TxnListByCategoryLoadedCopyWith(TxnListByCategoryLoaded value, $Res Function(TxnListByCategoryLoaded) _then) = _$TxnListByCategoryLoadedCopyWithImpl;
@useResult
$Res call({
 List<TransactionItem> list
});




}
/// @nodoc
class _$TxnListByCategoryLoadedCopyWithImpl<$Res>
    implements $TxnListByCategoryLoadedCopyWith<$Res> {
  _$TxnListByCategoryLoadedCopyWithImpl(this._self, this._then);

  final TxnListByCategoryLoaded _self;
  final $Res Function(TxnListByCategoryLoaded) _then;

/// Create a copy of TxnListByCategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? list = null,}) {
  return _then(TxnListByCategoryLoaded(
null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<TransactionItem>,
  ));
}


}

/// @nodoc


class TxnListByCategoryFailed implements TxnListByCategoryState {
  const TxnListByCategoryFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of TxnListByCategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxnListByCategoryFailedCopyWith<TxnListByCategoryFailed> get copyWith => _$TxnListByCategoryFailedCopyWithImpl<TxnListByCategoryFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnListByCategoryFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'TxnListByCategoryState.failed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $TxnListByCategoryFailedCopyWith<$Res> implements $TxnListByCategoryStateCopyWith<$Res> {
  factory $TxnListByCategoryFailedCopyWith(TxnListByCategoryFailed value, $Res Function(TxnListByCategoryFailed) _then) = _$TxnListByCategoryFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$TxnListByCategoryFailedCopyWithImpl<$Res>
    implements $TxnListByCategoryFailedCopyWith<$Res> {
  _$TxnListByCategoryFailedCopyWithImpl(this._self, this._then);

  final TxnListByCategoryFailed _self;
  final $Res Function(TxnListByCategoryFailed) _then;

/// Create a copy of TxnListByCategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(TxnListByCategoryFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of TxnListByCategoryState
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
