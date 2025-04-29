// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_details_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionDetailsRequest {

 String get id;
/// Create a copy of TransactionDetailsRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionDetailsRequestCopyWith<TransactionDetailsRequest> get copyWith => _$TransactionDetailsRequestCopyWithImpl<TransactionDetailsRequest>(this as TransactionDetailsRequest, _$identity);

  /// Serializes this TransactionDetailsRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionDetailsRequest&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TransactionDetailsRequest(id: $id)';
}


}

/// @nodoc
abstract mixin class $TransactionDetailsRequestCopyWith<$Res>  {
  factory $TransactionDetailsRequestCopyWith(TransactionDetailsRequest value, $Res Function(TransactionDetailsRequest) _then) = _$TransactionDetailsRequestCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$TransactionDetailsRequestCopyWithImpl<$Res>
    implements $TransactionDetailsRequestCopyWith<$Res> {
  _$TransactionDetailsRequestCopyWithImpl(this._self, this._then);

  final TransactionDetailsRequest _self;
  final $Res Function(TransactionDetailsRequest) _then;

/// Create a copy of TransactionDetailsRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TransactionDetailsRequest implements TransactionDetailsRequest {
  const _TransactionDetailsRequest({required this.id});
  factory _TransactionDetailsRequest.fromJson(Map<String, dynamic> json) => _$TransactionDetailsRequestFromJson(json);

@override final  String id;

/// Create a copy of TransactionDetailsRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionDetailsRequestCopyWith<_TransactionDetailsRequest> get copyWith => __$TransactionDetailsRequestCopyWithImpl<_TransactionDetailsRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionDetailsRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionDetailsRequest&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TransactionDetailsRequest(id: $id)';
}


}

/// @nodoc
abstract mixin class _$TransactionDetailsRequestCopyWith<$Res> implements $TransactionDetailsRequestCopyWith<$Res> {
  factory _$TransactionDetailsRequestCopyWith(_TransactionDetailsRequest value, $Res Function(_TransactionDetailsRequest) _then) = __$TransactionDetailsRequestCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$TransactionDetailsRequestCopyWithImpl<$Res>
    implements _$TransactionDetailsRequestCopyWith<$Res> {
  __$TransactionDetailsRequestCopyWithImpl(this._self, this._then);

  final _TransactionDetailsRequest _self;
  final $Res Function(_TransactionDetailsRequest) _then;

/// Create a copy of TransactionDetailsRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_TransactionDetailsRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
