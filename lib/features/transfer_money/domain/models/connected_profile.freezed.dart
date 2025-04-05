// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connected_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConnectedProfile {

 String get id; String get name; String get phone; String? get email; String? get profileUrl;
/// Create a copy of ConnectedProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectedProfileCopyWith<ConnectedProfile> get copyWith => _$ConnectedProfileCopyWithImpl<ConnectedProfile>(this as ConnectedProfile, _$identity);

  /// Serializes this ConnectedProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectedProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phone,email,profileUrl);

@override
String toString() {
  return 'ConnectedProfile(id: $id, name: $name, phone: $phone, email: $email, profileUrl: $profileUrl)';
}


}

/// @nodoc
abstract mixin class $ConnectedProfileCopyWith<$Res>  {
  factory $ConnectedProfileCopyWith(ConnectedProfile value, $Res Function(ConnectedProfile) _then) = _$ConnectedProfileCopyWithImpl;
@useResult
$Res call({
 String id, String name, String phone, String? email, String? profileUrl
});




}
/// @nodoc
class _$ConnectedProfileCopyWithImpl<$Res>
    implements $ConnectedProfileCopyWith<$Res> {
  _$ConnectedProfileCopyWithImpl(this._self, this._then);

  final ConnectedProfile _self;
  final $Res Function(ConnectedProfile) _then;

/// Create a copy of ConnectedProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? phone = null,Object? email = freezed,Object? profileUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,profileUrl: freezed == profileUrl ? _self.profileUrl : profileUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ConnectedProfile implements ConnectedProfile {
  const _ConnectedProfile({required this.id, required this.name, required this.phone, this.email, this.profileUrl});
  factory _ConnectedProfile.fromJson(Map<String, dynamic> json) => _$ConnectedProfileFromJson(json);

@override final  String id;
@override final  String name;
@override final  String phone;
@override final  String? email;
@override final  String? profileUrl;

/// Create a copy of ConnectedProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectedProfileCopyWith<_ConnectedProfile> get copyWith => __$ConnectedProfileCopyWithImpl<_ConnectedProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConnectedProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectedProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phone,email,profileUrl);

@override
String toString() {
  return 'ConnectedProfile(id: $id, name: $name, phone: $phone, email: $email, profileUrl: $profileUrl)';
}


}

/// @nodoc
abstract mixin class _$ConnectedProfileCopyWith<$Res> implements $ConnectedProfileCopyWith<$Res> {
  factory _$ConnectedProfileCopyWith(_ConnectedProfile value, $Res Function(_ConnectedProfile) _then) = __$ConnectedProfileCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String phone, String? email, String? profileUrl
});




}
/// @nodoc
class __$ConnectedProfileCopyWithImpl<$Res>
    implements _$ConnectedProfileCopyWith<$Res> {
  __$ConnectedProfileCopyWithImpl(this._self, this._then);

  final _ConnectedProfile _self;
  final $Res Function(_ConnectedProfile) _then;

/// Create a copy of ConnectedProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phone = null,Object? email = freezed,Object? profileUrl = freezed,}) {
  return _then(_ConnectedProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,profileUrl: freezed == profileUrl ? _self.profileUrl : profileUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
