// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_money_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestMoneyRequest {

 ConnectedProfile get requestReceivingTo; double get amount; PaymentOption get payOption; PuroseOfTransfer get purposeOfTransfer;
/// Create a copy of RequestMoneyRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestMoneyRequestCopyWith<RequestMoneyRequest> get copyWith => _$RequestMoneyRequestCopyWithImpl<RequestMoneyRequest>(this as RequestMoneyRequest, _$identity);

  /// Serializes this RequestMoneyRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestMoneyRequest&&(identical(other.requestReceivingTo, requestReceivingTo) || other.requestReceivingTo == requestReceivingTo)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.payOption, payOption) || other.payOption == payOption)&&(identical(other.purposeOfTransfer, purposeOfTransfer) || other.purposeOfTransfer == purposeOfTransfer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestReceivingTo,amount,payOption,purposeOfTransfer);

@override
String toString() {
  return 'RequestMoneyRequest(requestReceivingTo: $requestReceivingTo, amount: $amount, payOption: $payOption, purposeOfTransfer: $purposeOfTransfer)';
}


}

/// @nodoc
abstract mixin class $RequestMoneyRequestCopyWith<$Res>  {
  factory $RequestMoneyRequestCopyWith(RequestMoneyRequest value, $Res Function(RequestMoneyRequest) _then) = _$RequestMoneyRequestCopyWithImpl;
@useResult
$Res call({
 ConnectedProfile requestReceivingTo, double amount, PaymentOption payOption, PuroseOfTransfer purposeOfTransfer
});


$ConnectedProfileCopyWith<$Res> get requestReceivingTo;$PaymentOptionCopyWith<$Res> get payOption;

}
/// @nodoc
class _$RequestMoneyRequestCopyWithImpl<$Res>
    implements $RequestMoneyRequestCopyWith<$Res> {
  _$RequestMoneyRequestCopyWithImpl(this._self, this._then);

  final RequestMoneyRequest _self;
  final $Res Function(RequestMoneyRequest) _then;

/// Create a copy of RequestMoneyRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestReceivingTo = null,Object? amount = null,Object? payOption = null,Object? purposeOfTransfer = null,}) {
  return _then(_self.copyWith(
requestReceivingTo: null == requestReceivingTo ? _self.requestReceivingTo : requestReceivingTo // ignore: cast_nullable_to_non_nullable
as ConnectedProfile,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,payOption: null == payOption ? _self.payOption : payOption // ignore: cast_nullable_to_non_nullable
as PaymentOption,purposeOfTransfer: null == purposeOfTransfer ? _self.purposeOfTransfer : purposeOfTransfer // ignore: cast_nullable_to_non_nullable
as PuroseOfTransfer,
  ));
}
/// Create a copy of RequestMoneyRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectedProfileCopyWith<$Res> get requestReceivingTo {
  
  return $ConnectedProfileCopyWith<$Res>(_self.requestReceivingTo, (value) {
    return _then(_self.copyWith(requestReceivingTo: value));
  });
}/// Create a copy of RequestMoneyRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentOptionCopyWith<$Res> get payOption {
  
  return $PaymentOptionCopyWith<$Res>(_self.payOption, (value) {
    return _then(_self.copyWith(payOption: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _RequestMoneyRequest implements RequestMoneyRequest {
  const _RequestMoneyRequest({required this.requestReceivingTo, required this.amount, required this.payOption, required this.purposeOfTransfer});
  factory _RequestMoneyRequest.fromJson(Map<String, dynamic> json) => _$RequestMoneyRequestFromJson(json);

@override final  ConnectedProfile requestReceivingTo;
@override final  double amount;
@override final  PaymentOption payOption;
@override final  PuroseOfTransfer purposeOfTransfer;

/// Create a copy of RequestMoneyRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestMoneyRequestCopyWith<_RequestMoneyRequest> get copyWith => __$RequestMoneyRequestCopyWithImpl<_RequestMoneyRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestMoneyRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestMoneyRequest&&(identical(other.requestReceivingTo, requestReceivingTo) || other.requestReceivingTo == requestReceivingTo)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.payOption, payOption) || other.payOption == payOption)&&(identical(other.purposeOfTransfer, purposeOfTransfer) || other.purposeOfTransfer == purposeOfTransfer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestReceivingTo,amount,payOption,purposeOfTransfer);

@override
String toString() {
  return 'RequestMoneyRequest(requestReceivingTo: $requestReceivingTo, amount: $amount, payOption: $payOption, purposeOfTransfer: $purposeOfTransfer)';
}


}

/// @nodoc
abstract mixin class _$RequestMoneyRequestCopyWith<$Res> implements $RequestMoneyRequestCopyWith<$Res> {
  factory _$RequestMoneyRequestCopyWith(_RequestMoneyRequest value, $Res Function(_RequestMoneyRequest) _then) = __$RequestMoneyRequestCopyWithImpl;
@override @useResult
$Res call({
 ConnectedProfile requestReceivingTo, double amount, PaymentOption payOption, PuroseOfTransfer purposeOfTransfer
});


@override $ConnectedProfileCopyWith<$Res> get requestReceivingTo;@override $PaymentOptionCopyWith<$Res> get payOption;

}
/// @nodoc
class __$RequestMoneyRequestCopyWithImpl<$Res>
    implements _$RequestMoneyRequestCopyWith<$Res> {
  __$RequestMoneyRequestCopyWithImpl(this._self, this._then);

  final _RequestMoneyRequest _self;
  final $Res Function(_RequestMoneyRequest) _then;

/// Create a copy of RequestMoneyRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestReceivingTo = null,Object? amount = null,Object? payOption = null,Object? purposeOfTransfer = null,}) {
  return _then(_RequestMoneyRequest(
requestReceivingTo: null == requestReceivingTo ? _self.requestReceivingTo : requestReceivingTo // ignore: cast_nullable_to_non_nullable
as ConnectedProfile,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,payOption: null == payOption ? _self.payOption : payOption // ignore: cast_nullable_to_non_nullable
as PaymentOption,purposeOfTransfer: null == purposeOfTransfer ? _self.purposeOfTransfer : purposeOfTransfer // ignore: cast_nullable_to_non_nullable
as PuroseOfTransfer,
  ));
}

/// Create a copy of RequestMoneyRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectedProfileCopyWith<$Res> get requestReceivingTo {
  
  return $ConnectedProfileCopyWith<$Res>(_self.requestReceivingTo, (value) {
    return _then(_self.copyWith(requestReceivingTo: value));
  });
}/// Create a copy of RequestMoneyRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentOptionCopyWith<$Res> get payOption {
  
  return $PaymentOptionCopyWith<$Res>(_self.payOption, (value) {
    return _then(_self.copyWith(payOption: value));
  });
}
}

// dart format on
