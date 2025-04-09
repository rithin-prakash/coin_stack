// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tnc_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TncResponse {

 String get tncVersion; String get tncTitle; String get tncHtml;
/// Create a copy of TncResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TncResponseCopyWith<TncResponse> get copyWith => _$TncResponseCopyWithImpl<TncResponse>(this as TncResponse, _$identity);

  /// Serializes this TncResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TncResponse&&(identical(other.tncVersion, tncVersion) || other.tncVersion == tncVersion)&&(identical(other.tncTitle, tncTitle) || other.tncTitle == tncTitle)&&(identical(other.tncHtml, tncHtml) || other.tncHtml == tncHtml));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tncVersion,tncTitle,tncHtml);

@override
String toString() {
  return 'TncResponse(tncVersion: $tncVersion, tncTitle: $tncTitle, tncHtml: $tncHtml)';
}


}

/// @nodoc
abstract mixin class $TncResponseCopyWith<$Res>  {
  factory $TncResponseCopyWith(TncResponse value, $Res Function(TncResponse) _then) = _$TncResponseCopyWithImpl;
@useResult
$Res call({
 String tncVersion, String tncTitle, String tncHtml
});




}
/// @nodoc
class _$TncResponseCopyWithImpl<$Res>
    implements $TncResponseCopyWith<$Res> {
  _$TncResponseCopyWithImpl(this._self, this._then);

  final TncResponse _self;
  final $Res Function(TncResponse) _then;

/// Create a copy of TncResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tncVersion = null,Object? tncTitle = null,Object? tncHtml = null,}) {
  return _then(_self.copyWith(
tncVersion: null == tncVersion ? _self.tncVersion : tncVersion // ignore: cast_nullable_to_non_nullable
as String,tncTitle: null == tncTitle ? _self.tncTitle : tncTitle // ignore: cast_nullable_to_non_nullable
as String,tncHtml: null == tncHtml ? _self.tncHtml : tncHtml // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TncResponse implements TncResponse {
  const _TncResponse({required this.tncVersion, required this.tncTitle, required this.tncHtml});
  factory _TncResponse.fromJson(Map<String, dynamic> json) => _$TncResponseFromJson(json);

@override final  String tncVersion;
@override final  String tncTitle;
@override final  String tncHtml;

/// Create a copy of TncResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TncResponseCopyWith<_TncResponse> get copyWith => __$TncResponseCopyWithImpl<_TncResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TncResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TncResponse&&(identical(other.tncVersion, tncVersion) || other.tncVersion == tncVersion)&&(identical(other.tncTitle, tncTitle) || other.tncTitle == tncTitle)&&(identical(other.tncHtml, tncHtml) || other.tncHtml == tncHtml));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tncVersion,tncTitle,tncHtml);

@override
String toString() {
  return 'TncResponse(tncVersion: $tncVersion, tncTitle: $tncTitle, tncHtml: $tncHtml)';
}


}

/// @nodoc
abstract mixin class _$TncResponseCopyWith<$Res> implements $TncResponseCopyWith<$Res> {
  factory _$TncResponseCopyWith(_TncResponse value, $Res Function(_TncResponse) _then) = __$TncResponseCopyWithImpl;
@override @useResult
$Res call({
 String tncVersion, String tncTitle, String tncHtml
});




}
/// @nodoc
class __$TncResponseCopyWithImpl<$Res>
    implements _$TncResponseCopyWith<$Res> {
  __$TncResponseCopyWithImpl(this._self, this._then);

  final _TncResponse _self;
  final $Res Function(_TncResponse) _then;

/// Create a copy of TncResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tncVersion = null,Object? tncTitle = null,Object? tncHtml = null,}) {
  return _then(_TncResponse(
tncVersion: null == tncVersion ? _self.tncVersion : tncVersion // ignore: cast_nullable_to_non_nullable
as String,tncTitle: null == tncTitle ? _self.tncTitle : tncTitle // ignore: cast_nullable_to_non_nullable
as String,tncHtml: null == tncHtml ? _self.tncHtml : tncHtml // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
