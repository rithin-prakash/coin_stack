// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'txn_history_by_category_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TxnHistoryByCategoryRequest {

@TxnCategoryConverter() TransactionCategory get category; String get month; String get year;
/// Create a copy of TxnHistoryByCategoryRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxnHistoryByCategoryRequestCopyWith<TxnHistoryByCategoryRequest> get copyWith => _$TxnHistoryByCategoryRequestCopyWithImpl<TxnHistoryByCategoryRequest>(this as TxnHistoryByCategoryRequest, _$identity);

  /// Serializes this TxnHistoryByCategoryRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnHistoryByCategoryRequest&&(identical(other.category, category) || other.category == category)&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,month,year);

@override
String toString() {
  return 'TxnHistoryByCategoryRequest(category: $category, month: $month, year: $year)';
}


}

/// @nodoc
abstract mixin class $TxnHistoryByCategoryRequestCopyWith<$Res>  {
  factory $TxnHistoryByCategoryRequestCopyWith(TxnHistoryByCategoryRequest value, $Res Function(TxnHistoryByCategoryRequest) _then) = _$TxnHistoryByCategoryRequestCopyWithImpl;
@useResult
$Res call({
@TxnCategoryConverter() TransactionCategory category, String month, String year
});




}
/// @nodoc
class _$TxnHistoryByCategoryRequestCopyWithImpl<$Res>
    implements $TxnHistoryByCategoryRequestCopyWith<$Res> {
  _$TxnHistoryByCategoryRequestCopyWithImpl(this._self, this._then);

  final TxnHistoryByCategoryRequest _self;
  final $Res Function(TxnHistoryByCategoryRequest) _then;

/// Create a copy of TxnHistoryByCategoryRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? month = null,Object? year = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as TransactionCategory,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TxnHistoryByCategoryRequest implements TxnHistoryByCategoryRequest {
  const _TxnHistoryByCategoryRequest({@TxnCategoryConverter() required this.category, required this.month, required this.year});
  factory _TxnHistoryByCategoryRequest.fromJson(Map<String, dynamic> json) => _$TxnHistoryByCategoryRequestFromJson(json);

@override@TxnCategoryConverter() final  TransactionCategory category;
@override final  String month;
@override final  String year;

/// Create a copy of TxnHistoryByCategoryRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxnHistoryByCategoryRequestCopyWith<_TxnHistoryByCategoryRequest> get copyWith => __$TxnHistoryByCategoryRequestCopyWithImpl<_TxnHistoryByCategoryRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TxnHistoryByCategoryRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxnHistoryByCategoryRequest&&(identical(other.category, category) || other.category == category)&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,month,year);

@override
String toString() {
  return 'TxnHistoryByCategoryRequest(category: $category, month: $month, year: $year)';
}


}

/// @nodoc
abstract mixin class _$TxnHistoryByCategoryRequestCopyWith<$Res> implements $TxnHistoryByCategoryRequestCopyWith<$Res> {
  factory _$TxnHistoryByCategoryRequestCopyWith(_TxnHistoryByCategoryRequest value, $Res Function(_TxnHistoryByCategoryRequest) _then) = __$TxnHistoryByCategoryRequestCopyWithImpl;
@override @useResult
$Res call({
@TxnCategoryConverter() TransactionCategory category, String month, String year
});




}
/// @nodoc
class __$TxnHistoryByCategoryRequestCopyWithImpl<$Res>
    implements _$TxnHistoryByCategoryRequestCopyWith<$Res> {
  __$TxnHistoryByCategoryRequestCopyWithImpl(this._self, this._then);

  final _TxnHistoryByCategoryRequest _self;
  final $Res Function(_TxnHistoryByCategoryRequest) _then;

/// Create a copy of TxnHistoryByCategoryRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? month = null,Object? year = null,}) {
  return _then(_TxnHistoryByCategoryRequest(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as TransactionCategory,month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
