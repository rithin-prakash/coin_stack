// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_address_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditAddressRequest {

 String get addressLine1; String get city; String get pin;
/// Create a copy of EditAddressRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditAddressRequestCopyWith<EditAddressRequest> get copyWith => _$EditAddressRequestCopyWithImpl<EditAddressRequest>(this as EditAddressRequest, _$identity);

  /// Serializes this EditAddressRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditAddressRequest&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.city, city) || other.city == city)&&(identical(other.pin, pin) || other.pin == pin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addressLine1,city,pin);

@override
String toString() {
  return 'EditAddressRequest(addressLine1: $addressLine1, city: $city, pin: $pin)';
}


}

/// @nodoc
abstract mixin class $EditAddressRequestCopyWith<$Res>  {
  factory $EditAddressRequestCopyWith(EditAddressRequest value, $Res Function(EditAddressRequest) _then) = _$EditAddressRequestCopyWithImpl;
@useResult
$Res call({
 String addressLine1, String city, String pin
});




}
/// @nodoc
class _$EditAddressRequestCopyWithImpl<$Res>
    implements $EditAddressRequestCopyWith<$Res> {
  _$EditAddressRequestCopyWithImpl(this._self, this._then);

  final EditAddressRequest _self;
  final $Res Function(EditAddressRequest) _then;

/// Create a copy of EditAddressRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? addressLine1 = null,Object? city = null,Object? pin = null,}) {
  return _then(_self.copyWith(
addressLine1: null == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EditAddressRequest implements EditAddressRequest {
   _EditAddressRequest({required this.addressLine1, required this.city, required this.pin});
  factory _EditAddressRequest.fromJson(Map<String, dynamic> json) => _$EditAddressRequestFromJson(json);

@override final  String addressLine1;
@override final  String city;
@override final  String pin;

/// Create a copy of EditAddressRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditAddressRequestCopyWith<_EditAddressRequest> get copyWith => __$EditAddressRequestCopyWithImpl<_EditAddressRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EditAddressRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditAddressRequest&&(identical(other.addressLine1, addressLine1) || other.addressLine1 == addressLine1)&&(identical(other.city, city) || other.city == city)&&(identical(other.pin, pin) || other.pin == pin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addressLine1,city,pin);

@override
String toString() {
  return 'EditAddressRequest(addressLine1: $addressLine1, city: $city, pin: $pin)';
}


}

/// @nodoc
abstract mixin class _$EditAddressRequestCopyWith<$Res> implements $EditAddressRequestCopyWith<$Res> {
  factory _$EditAddressRequestCopyWith(_EditAddressRequest value, $Res Function(_EditAddressRequest) _then) = __$EditAddressRequestCopyWithImpl;
@override @useResult
$Res call({
 String addressLine1, String city, String pin
});




}
/// @nodoc
class __$EditAddressRequestCopyWithImpl<$Res>
    implements _$EditAddressRequestCopyWith<$Res> {
  __$EditAddressRequestCopyWithImpl(this._self, this._then);

  final _EditAddressRequest _self;
  final $Res Function(_EditAddressRequest) _then;

/// Create a copy of EditAddressRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? addressLine1 = null,Object? city = null,Object? pin = null,}) {
  return _then(_EditAddressRequest(
addressLine1: null == addressLine1 ? _self.addressLine1 : addressLine1 // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
