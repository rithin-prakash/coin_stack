// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'txn_history_by_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TxnHistoryByCategory {

 String get cateId; double get amount;
/// Create a copy of TxnHistoryByCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxnHistoryByCategoryCopyWith<TxnHistoryByCategory> get copyWith => _$TxnHistoryByCategoryCopyWithImpl<TxnHistoryByCategory>(this as TxnHistoryByCategory, _$identity);

  /// Serializes this TxnHistoryByCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnHistoryByCategory&&(identical(other.cateId, cateId) || other.cateId == cateId)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cateId,amount);

@override
String toString() {
  return 'TxnHistoryByCategory(cateId: $cateId, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $TxnHistoryByCategoryCopyWith<$Res>  {
  factory $TxnHistoryByCategoryCopyWith(TxnHistoryByCategory value, $Res Function(TxnHistoryByCategory) _then) = _$TxnHistoryByCategoryCopyWithImpl;
@useResult
$Res call({
 String cateId, double amount
});




}
/// @nodoc
class _$TxnHistoryByCategoryCopyWithImpl<$Res>
    implements $TxnHistoryByCategoryCopyWith<$Res> {
  _$TxnHistoryByCategoryCopyWithImpl(this._self, this._then);

  final TxnHistoryByCategory _self;
  final $Res Function(TxnHistoryByCategory) _then;

/// Create a copy of TxnHistoryByCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cateId = null,Object? amount = null,}) {
  return _then(_self.copyWith(
cateId: null == cateId ? _self.cateId : cateId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TxnHistoryByCategory implements TxnHistoryByCategory {
  const _TxnHistoryByCategory({required this.cateId, required this.amount});
  factory _TxnHistoryByCategory.fromJson(Map<String, dynamic> json) => _$TxnHistoryByCategoryFromJson(json);

@override final  String cateId;
@override final  double amount;

/// Create a copy of TxnHistoryByCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxnHistoryByCategoryCopyWith<_TxnHistoryByCategory> get copyWith => __$TxnHistoryByCategoryCopyWithImpl<_TxnHistoryByCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TxnHistoryByCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxnHistoryByCategory&&(identical(other.cateId, cateId) || other.cateId == cateId)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cateId,amount);

@override
String toString() {
  return 'TxnHistoryByCategory(cateId: $cateId, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$TxnHistoryByCategoryCopyWith<$Res> implements $TxnHistoryByCategoryCopyWith<$Res> {
  factory _$TxnHistoryByCategoryCopyWith(_TxnHistoryByCategory value, $Res Function(_TxnHistoryByCategory) _then) = __$TxnHistoryByCategoryCopyWithImpl;
@override @useResult
$Res call({
 String cateId, double amount
});




}
/// @nodoc
class __$TxnHistoryByCategoryCopyWithImpl<$Res>
    implements _$TxnHistoryByCategoryCopyWith<$Res> {
  __$TxnHistoryByCategoryCopyWithImpl(this._self, this._then);

  final _TxnHistoryByCategory _self;
  final $Res Function(_TxnHistoryByCategory) _then;

/// Create a copy of TxnHistoryByCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cateId = null,Object? amount = null,}) {
  return _then(_TxnHistoryByCategory(
cateId: null == cateId ? _self.cateId : cateId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
