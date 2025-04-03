// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

 String get phone; String get phoneCode; String? get email; String? get addressLine; String? get city; String? get pincode; String? get fullName; String? get username; DateTime? get dob; Country? get residentCountry;@PhoneVerifiedStatusConverter() PhoneVerifiedStatus get phoneVerified;@IdVerifiedStatusConverter() IdVerifiedStatus get idVerified;@PhotoVerifiedStatusConverter() PhotoVerifiedStatus get photoVerified; int get step;@JsonKey(name: 'primaryCurrency') Currency get primaryCurr; dynamic get isPasscodeSet;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.phoneCode, phoneCode) || other.phoneCode == phoneCode)&&(identical(other.email, email) || other.email == email)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.city, city) || other.city == city)&&(identical(other.pincode, pincode) || other.pincode == pincode)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.username, username) || other.username == username)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.residentCountry, residentCountry) || other.residentCountry == residentCountry)&&(identical(other.phoneVerified, phoneVerified) || other.phoneVerified == phoneVerified)&&(identical(other.idVerified, idVerified) || other.idVerified == idVerified)&&(identical(other.photoVerified, photoVerified) || other.photoVerified == photoVerified)&&(identical(other.step, step) || other.step == step)&&(identical(other.primaryCurr, primaryCurr) || other.primaryCurr == primaryCurr)&&const DeepCollectionEquality().equals(other.isPasscodeSet, isPasscodeSet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,phoneCode,email,addressLine,city,pincode,fullName,username,dob,residentCountry,phoneVerified,idVerified,photoVerified,step,primaryCurr,const DeepCollectionEquality().hash(isPasscodeSet));

@override
String toString() {
  return 'User(phone: $phone, phoneCode: $phoneCode, email: $email, addressLine: $addressLine, city: $city, pincode: $pincode, fullName: $fullName, username: $username, dob: $dob, residentCountry: $residentCountry, phoneVerified: $phoneVerified, idVerified: $idVerified, photoVerified: $photoVerified, step: $step, primaryCurr: $primaryCurr, isPasscodeSet: $isPasscodeSet)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String phone, String phoneCode, String? email, String? addressLine, String? city, String? pincode, String? fullName, String? username, DateTime? dob, Country? residentCountry,@PhoneVerifiedStatusConverter() PhoneVerifiedStatus phoneVerified,@IdVerifiedStatusConverter() IdVerifiedStatus idVerified,@PhotoVerifiedStatusConverter() PhotoVerifiedStatus photoVerified, int step,@JsonKey(name: 'primaryCurrency') Currency primaryCurr, dynamic isPasscodeSet
});


$CountryCopyWith<$Res>? get residentCountry;$CurrencyCopyWith<$Res> get primaryCurr;

}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,Object? phoneCode = null,Object? email = freezed,Object? addressLine = freezed,Object? city = freezed,Object? pincode = freezed,Object? fullName = freezed,Object? username = freezed,Object? dob = freezed,Object? residentCountry = freezed,Object? phoneVerified = null,Object? idVerified = null,Object? photoVerified = null,Object? step = null,Object? primaryCurr = null,Object? isPasscodeSet = freezed,}) {
  return _then(_self.copyWith(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,phoneCode: null == phoneCode ? _self.phoneCode : phoneCode // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,addressLine: freezed == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,pincode: freezed == pincode ? _self.pincode : pincode // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,residentCountry: freezed == residentCountry ? _self.residentCountry : residentCountry // ignore: cast_nullable_to_non_nullable
as Country?,phoneVerified: null == phoneVerified ? _self.phoneVerified : phoneVerified // ignore: cast_nullable_to_non_nullable
as PhoneVerifiedStatus,idVerified: null == idVerified ? _self.idVerified : idVerified // ignore: cast_nullable_to_non_nullable
as IdVerifiedStatus,photoVerified: null == photoVerified ? _self.photoVerified : photoVerified // ignore: cast_nullable_to_non_nullable
as PhotoVerifiedStatus,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as int,primaryCurr: null == primaryCurr ? _self.primaryCurr : primaryCurr // ignore: cast_nullable_to_non_nullable
as Currency,isPasscodeSet: freezed == isPasscodeSet ? _self.isPasscodeSet : isPasscodeSet // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryCopyWith<$Res>? get residentCountry {
    if (_self.residentCountry == null) {
    return null;
  }

  return $CountryCopyWith<$Res>(_self.residentCountry!, (value) {
    return _then(_self.copyWith(residentCountry: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyCopyWith<$Res> get primaryCurr {
  
  return $CurrencyCopyWith<$Res>(_self.primaryCurr, (value) {
    return _then(_self.copyWith(primaryCurr: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _User implements User {
   _User({required this.phone, required this.phoneCode, this.email, this.addressLine, this.city, this.pincode, this.fullName, this.username, this.dob, this.residentCountry, @PhoneVerifiedStatusConverter() this.phoneVerified = PhoneVerifiedStatus.initiated, @IdVerifiedStatusConverter() this.idVerified = IdVerifiedStatus.initiated, @PhotoVerifiedStatusConverter() this.photoVerified = PhotoVerifiedStatus.initiated, this.step = 1, @JsonKey(name: 'primaryCurrency') required this.primaryCurr, this.isPasscodeSet = false});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  String phone;
@override final  String phoneCode;
@override final  String? email;
@override final  String? addressLine;
@override final  String? city;
@override final  String? pincode;
@override final  String? fullName;
@override final  String? username;
@override final  DateTime? dob;
@override final  Country? residentCountry;
@override@JsonKey()@PhoneVerifiedStatusConverter() final  PhoneVerifiedStatus phoneVerified;
@override@JsonKey()@IdVerifiedStatusConverter() final  IdVerifiedStatus idVerified;
@override@JsonKey()@PhotoVerifiedStatusConverter() final  PhotoVerifiedStatus photoVerified;
@override@JsonKey() final  int step;
@override@JsonKey(name: 'primaryCurrency') final  Currency primaryCurr;
@override@JsonKey() final  dynamic isPasscodeSet;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.phoneCode, phoneCode) || other.phoneCode == phoneCode)&&(identical(other.email, email) || other.email == email)&&(identical(other.addressLine, addressLine) || other.addressLine == addressLine)&&(identical(other.city, city) || other.city == city)&&(identical(other.pincode, pincode) || other.pincode == pincode)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.username, username) || other.username == username)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.residentCountry, residentCountry) || other.residentCountry == residentCountry)&&(identical(other.phoneVerified, phoneVerified) || other.phoneVerified == phoneVerified)&&(identical(other.idVerified, idVerified) || other.idVerified == idVerified)&&(identical(other.photoVerified, photoVerified) || other.photoVerified == photoVerified)&&(identical(other.step, step) || other.step == step)&&(identical(other.primaryCurr, primaryCurr) || other.primaryCurr == primaryCurr)&&const DeepCollectionEquality().equals(other.isPasscodeSet, isPasscodeSet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,phoneCode,email,addressLine,city,pincode,fullName,username,dob,residentCountry,phoneVerified,idVerified,photoVerified,step,primaryCurr,const DeepCollectionEquality().hash(isPasscodeSet));

@override
String toString() {
  return 'User(phone: $phone, phoneCode: $phoneCode, email: $email, addressLine: $addressLine, city: $city, pincode: $pincode, fullName: $fullName, username: $username, dob: $dob, residentCountry: $residentCountry, phoneVerified: $phoneVerified, idVerified: $idVerified, photoVerified: $photoVerified, step: $step, primaryCurr: $primaryCurr, isPasscodeSet: $isPasscodeSet)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String phone, String phoneCode, String? email, String? addressLine, String? city, String? pincode, String? fullName, String? username, DateTime? dob, Country? residentCountry,@PhoneVerifiedStatusConverter() PhoneVerifiedStatus phoneVerified,@IdVerifiedStatusConverter() IdVerifiedStatus idVerified,@PhotoVerifiedStatusConverter() PhotoVerifiedStatus photoVerified, int step,@JsonKey(name: 'primaryCurrency') Currency primaryCurr, dynamic isPasscodeSet
});


@override $CountryCopyWith<$Res>? get residentCountry;@override $CurrencyCopyWith<$Res> get primaryCurr;

}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? phoneCode = null,Object? email = freezed,Object? addressLine = freezed,Object? city = freezed,Object? pincode = freezed,Object? fullName = freezed,Object? username = freezed,Object? dob = freezed,Object? residentCountry = freezed,Object? phoneVerified = null,Object? idVerified = null,Object? photoVerified = null,Object? step = null,Object? primaryCurr = null,Object? isPasscodeSet = freezed,}) {
  return _then(_User(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,phoneCode: null == phoneCode ? _self.phoneCode : phoneCode // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,addressLine: freezed == addressLine ? _self.addressLine : addressLine // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,pincode: freezed == pincode ? _self.pincode : pincode // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as DateTime?,residentCountry: freezed == residentCountry ? _self.residentCountry : residentCountry // ignore: cast_nullable_to_non_nullable
as Country?,phoneVerified: null == phoneVerified ? _self.phoneVerified : phoneVerified // ignore: cast_nullable_to_non_nullable
as PhoneVerifiedStatus,idVerified: null == idVerified ? _self.idVerified : idVerified // ignore: cast_nullable_to_non_nullable
as IdVerifiedStatus,photoVerified: null == photoVerified ? _self.photoVerified : photoVerified // ignore: cast_nullable_to_non_nullable
as PhotoVerifiedStatus,step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as int,primaryCurr: null == primaryCurr ? _self.primaryCurr : primaryCurr // ignore: cast_nullable_to_non_nullable
as Currency,isPasscodeSet: freezed == isPasscodeSet ? _self.isPasscodeSet! : isPasscodeSet ,
  ));
}

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CountryCopyWith<$Res>? get residentCountry {
    if (_self.residentCountry == null) {
    return null;
  }

  return $CountryCopyWith<$Res>(_self.residentCountry!, (value) {
    return _then(_self.copyWith(residentCountry: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyCopyWith<$Res> get primaryCurr {
  
  return $CurrencyCopyWith<$Res>(_self.primaryCurr, (value) {
    return _then(_self.copyWith(primaryCurr: value));
  });
}
}

// dart format on
