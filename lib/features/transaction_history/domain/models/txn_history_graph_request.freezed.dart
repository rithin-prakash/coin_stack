// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'txn_history_graph_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TxnHistoryGraphRequest {

@TxnCategoryConverter() TransactionCategory get category;@DateTimeConverter() DateTime get date;
/// Create a copy of TxnHistoryGraphRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxnHistoryGraphRequestCopyWith<TxnHistoryGraphRequest> get copyWith => _$TxnHistoryGraphRequestCopyWithImpl<TxnHistoryGraphRequest>(this as TxnHistoryGraphRequest, _$identity);

  /// Serializes this TxnHistoryGraphRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnHistoryGraphRequest&&(identical(other.category, category) || other.category == category)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,date);

@override
String toString() {
  return 'TxnHistoryGraphRequest(category: $category, date: $date)';
}


}

/// @nodoc
abstract mixin class $TxnHistoryGraphRequestCopyWith<$Res>  {
  factory $TxnHistoryGraphRequestCopyWith(TxnHistoryGraphRequest value, $Res Function(TxnHistoryGraphRequest) _then) = _$TxnHistoryGraphRequestCopyWithImpl;
@useResult
$Res call({
@TxnCategoryConverter() TransactionCategory category,@DateTimeConverter() DateTime date
});




}
/// @nodoc
class _$TxnHistoryGraphRequestCopyWithImpl<$Res>
    implements $TxnHistoryGraphRequestCopyWith<$Res> {
  _$TxnHistoryGraphRequestCopyWithImpl(this._self, this._then);

  final TxnHistoryGraphRequest _self;
  final $Res Function(TxnHistoryGraphRequest) _then;

/// Create a copy of TxnHistoryGraphRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? date = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as TransactionCategory,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TxnHistoryGraphRequest implements TxnHistoryGraphRequest {
  const _TxnHistoryGraphRequest({@TxnCategoryConverter() required this.category, @DateTimeConverter() required this.date});
  factory _TxnHistoryGraphRequest.fromJson(Map<String, dynamic> json) => _$TxnHistoryGraphRequestFromJson(json);

@override@TxnCategoryConverter() final  TransactionCategory category;
@override@DateTimeConverter() final  DateTime date;

/// Create a copy of TxnHistoryGraphRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxnHistoryGraphRequestCopyWith<_TxnHistoryGraphRequest> get copyWith => __$TxnHistoryGraphRequestCopyWithImpl<_TxnHistoryGraphRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TxnHistoryGraphRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxnHistoryGraphRequest&&(identical(other.category, category) || other.category == category)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,date);

@override
String toString() {
  return 'TxnHistoryGraphRequest(category: $category, date: $date)';
}


}

/// @nodoc
abstract mixin class _$TxnHistoryGraphRequestCopyWith<$Res> implements $TxnHistoryGraphRequestCopyWith<$Res> {
  factory _$TxnHistoryGraphRequestCopyWith(_TxnHistoryGraphRequest value, $Res Function(_TxnHistoryGraphRequest) _then) = __$TxnHistoryGraphRequestCopyWithImpl;
@override @useResult
$Res call({
@TxnCategoryConverter() TransactionCategory category,@DateTimeConverter() DateTime date
});




}
/// @nodoc
class __$TxnHistoryGraphRequestCopyWithImpl<$Res>
    implements _$TxnHistoryGraphRequestCopyWith<$Res> {
  __$TxnHistoryGraphRequestCopyWithImpl(this._self, this._then);

  final _TxnHistoryGraphRequest _self;
  final $Res Function(_TxnHistoryGraphRequest) _then;

/// Create a copy of TxnHistoryGraphRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? date = null,}) {
  return _then(_TxnHistoryGraphRequest(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as TransactionCategory,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
