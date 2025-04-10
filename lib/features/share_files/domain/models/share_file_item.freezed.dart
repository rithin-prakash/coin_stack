// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_file_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShareFileItem {

 String get path; Uint8List get data; MimeType get mimeType; String? get name;
/// Create a copy of ShareFileItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShareFileItemCopyWith<ShareFileItem> get copyWith => _$ShareFileItemCopyWithImpl<ShareFileItem>(this as ShareFileItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShareFileItem&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,path,const DeepCollectionEquality().hash(data),mimeType,name);

@override
String toString() {
  return 'ShareFileItem(path: $path, data: $data, mimeType: $mimeType, name: $name)';
}


}

/// @nodoc
abstract mixin class $ShareFileItemCopyWith<$Res>  {
  factory $ShareFileItemCopyWith(ShareFileItem value, $Res Function(ShareFileItem) _then) = _$ShareFileItemCopyWithImpl;
@useResult
$Res call({
 String path, Uint8List data, MimeType mimeType, String? name
});




}
/// @nodoc
class _$ShareFileItemCopyWithImpl<$Res>
    implements $ShareFileItemCopyWith<$Res> {
  _$ShareFileItemCopyWithImpl(this._self, this._then);

  final ShareFileItem _self;
  final $Res Function(ShareFileItem) _then;

/// Create a copy of ShareFileItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? data = null,Object? mimeType = null,Object? name = freezed,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Uint8List,mimeType: null == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as MimeType,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _ShareFileItem implements ShareFileItem {
  const _ShareFileItem({required this.path, required this.data, required this.mimeType, this.name});
  

@override final  String path;
@override final  Uint8List data;
@override final  MimeType mimeType;
@override final  String? name;

/// Create a copy of ShareFileItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShareFileItemCopyWith<_ShareFileItem> get copyWith => __$ShareFileItemCopyWithImpl<_ShareFileItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShareFileItem&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,path,const DeepCollectionEquality().hash(data),mimeType,name);

@override
String toString() {
  return 'ShareFileItem(path: $path, data: $data, mimeType: $mimeType, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ShareFileItemCopyWith<$Res> implements $ShareFileItemCopyWith<$Res> {
  factory _$ShareFileItemCopyWith(_ShareFileItem value, $Res Function(_ShareFileItem) _then) = __$ShareFileItemCopyWithImpl;
@override @useResult
$Res call({
 String path, Uint8List data, MimeType mimeType, String? name
});




}
/// @nodoc
class __$ShareFileItemCopyWithImpl<$Res>
    implements _$ShareFileItemCopyWith<$Res> {
  __$ShareFileItemCopyWithImpl(this._self, this._then);

  final _ShareFileItem _self;
  final $Res Function(_ShareFileItem) _then;

/// Create a copy of ShareFileItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? data = null,Object? mimeType = null,Object? name = freezed,}) {
  return _then(_ShareFileItem(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Uint8List,mimeType: null == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as MimeType,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
