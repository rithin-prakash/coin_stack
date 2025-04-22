// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'txn_history_graph_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TxnHistoryGraphResponse {

@TxnCategoryConverter() TransactionCategory get category;@DateTimeConverter() DateTime get date; List<TxnHistoryGraphData> get data;
/// Create a copy of TxnHistoryGraphResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxnHistoryGraphResponseCopyWith<TxnHistoryGraphResponse> get copyWith => _$TxnHistoryGraphResponseCopyWithImpl<TxnHistoryGraphResponse>(this as TxnHistoryGraphResponse, _$identity);

  /// Serializes this TxnHistoryGraphResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnHistoryGraphResponse&&(identical(other.category, category) || other.category == category)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,date,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'TxnHistoryGraphResponse(category: $category, date: $date, data: $data)';
}


}

/// @nodoc
abstract mixin class $TxnHistoryGraphResponseCopyWith<$Res>  {
  factory $TxnHistoryGraphResponseCopyWith(TxnHistoryGraphResponse value, $Res Function(TxnHistoryGraphResponse) _then) = _$TxnHistoryGraphResponseCopyWithImpl;
@useResult
$Res call({
@TxnCategoryConverter() TransactionCategory category,@DateTimeConverter() DateTime date, List<TxnHistoryGraphData> data
});




}
/// @nodoc
class _$TxnHistoryGraphResponseCopyWithImpl<$Res>
    implements $TxnHistoryGraphResponseCopyWith<$Res> {
  _$TxnHistoryGraphResponseCopyWithImpl(this._self, this._then);

  final TxnHistoryGraphResponse _self;
  final $Res Function(TxnHistoryGraphResponse) _then;

/// Create a copy of TxnHistoryGraphResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? date = null,Object? data = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as TransactionCategory,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<TxnHistoryGraphData>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TxnHistoryGraphResponse implements TxnHistoryGraphResponse {
  const _TxnHistoryGraphResponse({@TxnCategoryConverter() required this.category, @DateTimeConverter() required this.date, required final  List<TxnHistoryGraphData> data}): _data = data;
  factory _TxnHistoryGraphResponse.fromJson(Map<String, dynamic> json) => _$TxnHistoryGraphResponseFromJson(json);

@override@TxnCategoryConverter() final  TransactionCategory category;
@override@DateTimeConverter() final  DateTime date;
 final  List<TxnHistoryGraphData> _data;
@override List<TxnHistoryGraphData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of TxnHistoryGraphResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxnHistoryGraphResponseCopyWith<_TxnHistoryGraphResponse> get copyWith => __$TxnHistoryGraphResponseCopyWithImpl<_TxnHistoryGraphResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TxnHistoryGraphResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxnHistoryGraphResponse&&(identical(other.category, category) || other.category == category)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,date,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'TxnHistoryGraphResponse(category: $category, date: $date, data: $data)';
}


}

/// @nodoc
abstract mixin class _$TxnHistoryGraphResponseCopyWith<$Res> implements $TxnHistoryGraphResponseCopyWith<$Res> {
  factory _$TxnHistoryGraphResponseCopyWith(_TxnHistoryGraphResponse value, $Res Function(_TxnHistoryGraphResponse) _then) = __$TxnHistoryGraphResponseCopyWithImpl;
@override @useResult
$Res call({
@TxnCategoryConverter() TransactionCategory category,@DateTimeConverter() DateTime date, List<TxnHistoryGraphData> data
});




}
/// @nodoc
class __$TxnHistoryGraphResponseCopyWithImpl<$Res>
    implements _$TxnHistoryGraphResponseCopyWith<$Res> {
  __$TxnHistoryGraphResponseCopyWithImpl(this._self, this._then);

  final _TxnHistoryGraphResponse _self;
  final $Res Function(_TxnHistoryGraphResponse) _then;

/// Create a copy of TxnHistoryGraphResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? date = null,Object? data = null,}) {
  return _then(_TxnHistoryGraphResponse(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as TransactionCategory,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<TxnHistoryGraphData>,
  ));
}


}


/// @nodoc
mixin _$TxnHistoryGraphData {

 int get x; int get y;
/// Create a copy of TxnHistoryGraphData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxnHistoryGraphDataCopyWith<TxnHistoryGraphData> get copyWith => _$TxnHistoryGraphDataCopyWithImpl<TxnHistoryGraphData>(this as TxnHistoryGraphData, _$identity);

  /// Serializes this TxnHistoryGraphData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnHistoryGraphData&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'TxnHistoryGraphData(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class $TxnHistoryGraphDataCopyWith<$Res>  {
  factory $TxnHistoryGraphDataCopyWith(TxnHistoryGraphData value, $Res Function(TxnHistoryGraphData) _then) = _$TxnHistoryGraphDataCopyWithImpl;
@useResult
$Res call({
 int x, int y
});




}
/// @nodoc
class _$TxnHistoryGraphDataCopyWithImpl<$Res>
    implements $TxnHistoryGraphDataCopyWith<$Res> {
  _$TxnHistoryGraphDataCopyWithImpl(this._self, this._then);

  final TxnHistoryGraphData _self;
  final $Res Function(TxnHistoryGraphData) _then;

/// Create a copy of TxnHistoryGraphData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TxnHistoryGraphData implements TxnHistoryGraphData {
  const _TxnHistoryGraphData({required this.x, required this.y});
  factory _TxnHistoryGraphData.fromJson(Map<String, dynamic> json) => _$TxnHistoryGraphDataFromJson(json);

@override final  int x;
@override final  int y;

/// Create a copy of TxnHistoryGraphData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxnHistoryGraphDataCopyWith<_TxnHistoryGraphData> get copyWith => __$TxnHistoryGraphDataCopyWithImpl<_TxnHistoryGraphData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TxnHistoryGraphDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxnHistoryGraphData&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,x,y);

@override
String toString() {
  return 'TxnHistoryGraphData(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class _$TxnHistoryGraphDataCopyWith<$Res> implements $TxnHistoryGraphDataCopyWith<$Res> {
  factory _$TxnHistoryGraphDataCopyWith(_TxnHistoryGraphData value, $Res Function(_TxnHistoryGraphData) _then) = __$TxnHistoryGraphDataCopyWithImpl;
@override @useResult
$Res call({
 int x, int y
});




}
/// @nodoc
class __$TxnHistoryGraphDataCopyWithImpl<$Res>
    implements _$TxnHistoryGraphDataCopyWith<$Res> {
  __$TxnHistoryGraphDataCopyWithImpl(this._self, this._then);

  final _TxnHistoryGraphData _self;
  final $Res Function(_TxnHistoryGraphData) _then;

/// Create a copy of TxnHistoryGraphData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,}) {
  return _then(_TxnHistoryGraphData(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
