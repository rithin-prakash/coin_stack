// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_card_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddCardRequest {

 String get cardNumber; String get expYear; String get expMonth; String get cvv; String get fullname; String get email;
/// Create a copy of AddCardRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCardRequestCopyWith<AddCardRequest> get copyWith => _$AddCardRequestCopyWithImpl<AddCardRequest>(this as AddCardRequest, _$identity);

  /// Serializes this AddCardRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCardRequest&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.expYear, expYear) || other.expYear == expYear)&&(identical(other.expMonth, expMonth) || other.expMonth == expMonth)&&(identical(other.cvv, cvv) || other.cvv == cvv)&&(identical(other.fullname, fullname) || other.fullname == fullname)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardNumber,expYear,expMonth,cvv,fullname,email);

@override
String toString() {
  return 'AddCardRequest(cardNumber: $cardNumber, expYear: $expYear, expMonth: $expMonth, cvv: $cvv, fullname: $fullname, email: $email)';
}


}

/// @nodoc
abstract mixin class $AddCardRequestCopyWith<$Res>  {
  factory $AddCardRequestCopyWith(AddCardRequest value, $Res Function(AddCardRequest) _then) = _$AddCardRequestCopyWithImpl;
@useResult
$Res call({
 String cardNumber, String expYear, String expMonth, String cvv, String fullname, String email
});




}
/// @nodoc
class _$AddCardRequestCopyWithImpl<$Res>
    implements $AddCardRequestCopyWith<$Res> {
  _$AddCardRequestCopyWithImpl(this._self, this._then);

  final AddCardRequest _self;
  final $Res Function(AddCardRequest) _then;

/// Create a copy of AddCardRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardNumber = null,Object? expYear = null,Object? expMonth = null,Object? cvv = null,Object? fullname = null,Object? email = null,}) {
  return _then(_self.copyWith(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,expYear: null == expYear ? _self.expYear : expYear // ignore: cast_nullable_to_non_nullable
as String,expMonth: null == expMonth ? _self.expMonth : expMonth // ignore: cast_nullable_to_non_nullable
as String,cvv: null == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as String,fullname: null == fullname ? _self.fullname : fullname // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AddCardRequest implements AddCardRequest {
  const _AddCardRequest({required this.cardNumber, required this.expYear, required this.expMonth, required this.cvv, required this.fullname, required this.email});
  factory _AddCardRequest.fromJson(Map<String, dynamic> json) => _$AddCardRequestFromJson(json);

@override final  String cardNumber;
@override final  String expYear;
@override final  String expMonth;
@override final  String cvv;
@override final  String fullname;
@override final  String email;

/// Create a copy of AddCardRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddCardRequestCopyWith<_AddCardRequest> get copyWith => __$AddCardRequestCopyWithImpl<_AddCardRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddCardRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddCardRequest&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.expYear, expYear) || other.expYear == expYear)&&(identical(other.expMonth, expMonth) || other.expMonth == expMonth)&&(identical(other.cvv, cvv) || other.cvv == cvv)&&(identical(other.fullname, fullname) || other.fullname == fullname)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardNumber,expYear,expMonth,cvv,fullname,email);

@override
String toString() {
  return 'AddCardRequest(cardNumber: $cardNumber, expYear: $expYear, expMonth: $expMonth, cvv: $cvv, fullname: $fullname, email: $email)';
}


}

/// @nodoc
abstract mixin class _$AddCardRequestCopyWith<$Res> implements $AddCardRequestCopyWith<$Res> {
  factory _$AddCardRequestCopyWith(_AddCardRequest value, $Res Function(_AddCardRequest) _then) = __$AddCardRequestCopyWithImpl;
@override @useResult
$Res call({
 String cardNumber, String expYear, String expMonth, String cvv, String fullname, String email
});




}
/// @nodoc
class __$AddCardRequestCopyWithImpl<$Res>
    implements _$AddCardRequestCopyWith<$Res> {
  __$AddCardRequestCopyWithImpl(this._self, this._then);

  final _AddCardRequest _self;
  final $Res Function(_AddCardRequest) _then;

/// Create a copy of AddCardRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardNumber = null,Object? expYear = null,Object? expMonth = null,Object? cvv = null,Object? fullname = null,Object? email = null,}) {
  return _then(_AddCardRequest(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,expYear: null == expYear ? _self.expYear : expYear // ignore: cast_nullable_to_non_nullable
as String,expMonth: null == expMonth ? _self.expMonth : expMonth // ignore: cast_nullable_to_non_nullable
as String,cvv: null == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as String,fullname: null == fullname ? _self.fullname : fullname // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
