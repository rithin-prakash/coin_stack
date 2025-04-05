// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'txn_history_category_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TxnHistoryCategoryRequest {

 TransactionCategory get category;
/// Create a copy of TxnHistoryCategoryRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TxnHistoryCategoryRequestCopyWith<TxnHistoryCategoryRequest> get copyWith => _$TxnHistoryCategoryRequestCopyWithImpl<TxnHistoryCategoryRequest>(this as TxnHistoryCategoryRequest, _$identity);

  /// Serializes this TxnHistoryCategoryRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TxnHistoryCategoryRequest&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'TxnHistoryCategoryRequest(category: $category)';
}


}

/// @nodoc
abstract mixin class $TxnHistoryCategoryRequestCopyWith<$Res>  {
  factory $TxnHistoryCategoryRequestCopyWith(TxnHistoryCategoryRequest value, $Res Function(TxnHistoryCategoryRequest) _then) = _$TxnHistoryCategoryRequestCopyWithImpl;
@useResult
$Res call({
 TransactionCategory category
});




}
/// @nodoc
class _$TxnHistoryCategoryRequestCopyWithImpl<$Res>
    implements $TxnHistoryCategoryRequestCopyWith<$Res> {
  _$TxnHistoryCategoryRequestCopyWithImpl(this._self, this._then);

  final TxnHistoryCategoryRequest _self;
  final $Res Function(TxnHistoryCategoryRequest) _then;

/// Create a copy of TxnHistoryCategoryRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as TransactionCategory,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TxnHistoryCategoryRequest implements TxnHistoryCategoryRequest {
  const _TxnHistoryCategoryRequest({required this.category});
  factory _TxnHistoryCategoryRequest.fromJson(Map<String, dynamic> json) => _$TxnHistoryCategoryRequestFromJson(json);

@override final  TransactionCategory category;

/// Create a copy of TxnHistoryCategoryRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TxnHistoryCategoryRequestCopyWith<_TxnHistoryCategoryRequest> get copyWith => __$TxnHistoryCategoryRequestCopyWithImpl<_TxnHistoryCategoryRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TxnHistoryCategoryRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TxnHistoryCategoryRequest&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'TxnHistoryCategoryRequest(category: $category)';
}


}

/// @nodoc
abstract mixin class _$TxnHistoryCategoryRequestCopyWith<$Res> implements $TxnHistoryCategoryRequestCopyWith<$Res> {
  factory _$TxnHistoryCategoryRequestCopyWith(_TxnHistoryCategoryRequest value, $Res Function(_TxnHistoryCategoryRequest) _then) = __$TxnHistoryCategoryRequestCopyWithImpl;
@override @useResult
$Res call({
 TransactionCategory category
});




}
/// @nodoc
class __$TxnHistoryCategoryRequestCopyWithImpl<$Res>
    implements _$TxnHistoryCategoryRequestCopyWith<$Res> {
  __$TxnHistoryCategoryRequestCopyWithImpl(this._self, this._then);

  final _TxnHistoryCategoryRequest _self;
  final $Res Function(_TxnHistoryCategoryRequest) _then;

/// Create a copy of TxnHistoryCategoryRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(_TxnHistoryCategoryRequest(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as TransactionCategory,
  ));
}


}

// dart format on
