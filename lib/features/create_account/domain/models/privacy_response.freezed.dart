// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'privacy_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrivacyResponse {

 String get privacyVersion; String get privacyTitle; String get privacyHtml;
/// Create a copy of PrivacyResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrivacyResponseCopyWith<PrivacyResponse> get copyWith => _$PrivacyResponseCopyWithImpl<PrivacyResponse>(this as PrivacyResponse, _$identity);

  /// Serializes this PrivacyResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrivacyResponse&&(identical(other.privacyVersion, privacyVersion) || other.privacyVersion == privacyVersion)&&(identical(other.privacyTitle, privacyTitle) || other.privacyTitle == privacyTitle)&&(identical(other.privacyHtml, privacyHtml) || other.privacyHtml == privacyHtml));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,privacyVersion,privacyTitle,privacyHtml);

@override
String toString() {
  return 'PrivacyResponse(privacyVersion: $privacyVersion, privacyTitle: $privacyTitle, privacyHtml: $privacyHtml)';
}


}

/// @nodoc
abstract mixin class $PrivacyResponseCopyWith<$Res>  {
  factory $PrivacyResponseCopyWith(PrivacyResponse value, $Res Function(PrivacyResponse) _then) = _$PrivacyResponseCopyWithImpl;
@useResult
$Res call({
 String privacyVersion, String privacyTitle, String privacyHtml
});




}
/// @nodoc
class _$PrivacyResponseCopyWithImpl<$Res>
    implements $PrivacyResponseCopyWith<$Res> {
  _$PrivacyResponseCopyWithImpl(this._self, this._then);

  final PrivacyResponse _self;
  final $Res Function(PrivacyResponse) _then;

/// Create a copy of PrivacyResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? privacyVersion = null,Object? privacyTitle = null,Object? privacyHtml = null,}) {
  return _then(_self.copyWith(
privacyVersion: null == privacyVersion ? _self.privacyVersion : privacyVersion // ignore: cast_nullable_to_non_nullable
as String,privacyTitle: null == privacyTitle ? _self.privacyTitle : privacyTitle // ignore: cast_nullable_to_non_nullable
as String,privacyHtml: null == privacyHtml ? _self.privacyHtml : privacyHtml // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PrivacyResponse implements PrivacyResponse {
  const _PrivacyResponse({required this.privacyVersion, required this.privacyTitle, required this.privacyHtml});
  factory _PrivacyResponse.fromJson(Map<String, dynamic> json) => _$PrivacyResponseFromJson(json);

@override final  String privacyVersion;
@override final  String privacyTitle;
@override final  String privacyHtml;

/// Create a copy of PrivacyResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrivacyResponseCopyWith<_PrivacyResponse> get copyWith => __$PrivacyResponseCopyWithImpl<_PrivacyResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrivacyResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrivacyResponse&&(identical(other.privacyVersion, privacyVersion) || other.privacyVersion == privacyVersion)&&(identical(other.privacyTitle, privacyTitle) || other.privacyTitle == privacyTitle)&&(identical(other.privacyHtml, privacyHtml) || other.privacyHtml == privacyHtml));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,privacyVersion,privacyTitle,privacyHtml);

@override
String toString() {
  return 'PrivacyResponse(privacyVersion: $privacyVersion, privacyTitle: $privacyTitle, privacyHtml: $privacyHtml)';
}


}

/// @nodoc
abstract mixin class _$PrivacyResponseCopyWith<$Res> implements $PrivacyResponseCopyWith<$Res> {
  factory _$PrivacyResponseCopyWith(_PrivacyResponse value, $Res Function(_PrivacyResponse) _then) = __$PrivacyResponseCopyWithImpl;
@override @useResult
$Res call({
 String privacyVersion, String privacyTitle, String privacyHtml
});




}
/// @nodoc
class __$PrivacyResponseCopyWithImpl<$Res>
    implements _$PrivacyResponseCopyWith<$Res> {
  __$PrivacyResponseCopyWithImpl(this._self, this._then);

  final _PrivacyResponse _self;
  final $Res Function(_PrivacyResponse) _then;

/// Create a copy of PrivacyResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? privacyVersion = null,Object? privacyTitle = null,Object? privacyHtml = null,}) {
  return _then(_PrivacyResponse(
privacyVersion: null == privacyVersion ? _self.privacyVersion : privacyVersion // ignore: cast_nullable_to_non_nullable
as String,privacyTitle: null == privacyTitle ? _self.privacyTitle : privacyTitle // ignore: cast_nullable_to_non_nullable
as String,privacyHtml: null == privacyHtml ? _self.privacyHtml : privacyHtml // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
