// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_money_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendMoneyRequest {

 ConnectedProfile get receiver; double get amount; PaymentOption get payOption; PuroseOfTransfer get purposeOfTransfer;
/// Create a copy of SendMoneyRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendMoneyRequestCopyWith<SendMoneyRequest> get copyWith => _$SendMoneyRequestCopyWithImpl<SendMoneyRequest>(this as SendMoneyRequest, _$identity);

  /// Serializes this SendMoneyRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMoneyRequest&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.payOption, payOption) || other.payOption == payOption)&&(identical(other.purposeOfTransfer, purposeOfTransfer) || other.purposeOfTransfer == purposeOfTransfer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiver,amount,payOption,purposeOfTransfer);

@override
String toString() {
  return 'SendMoneyRequest(receiver: $receiver, amount: $amount, payOption: $payOption, purposeOfTransfer: $purposeOfTransfer)';
}


}

/// @nodoc
abstract mixin class $SendMoneyRequestCopyWith<$Res>  {
  factory $SendMoneyRequestCopyWith(SendMoneyRequest value, $Res Function(SendMoneyRequest) _then) = _$SendMoneyRequestCopyWithImpl;
@useResult
$Res call({
 ConnectedProfile receiver, double amount, PaymentOption payOption, PuroseOfTransfer purposeOfTransfer
});


$ConnectedProfileCopyWith<$Res> get receiver;$PaymentOptionCopyWith<$Res> get payOption;

}
/// @nodoc
class _$SendMoneyRequestCopyWithImpl<$Res>
    implements $SendMoneyRequestCopyWith<$Res> {
  _$SendMoneyRequestCopyWithImpl(this._self, this._then);

  final SendMoneyRequest _self;
  final $Res Function(SendMoneyRequest) _then;

/// Create a copy of SendMoneyRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiver = null,Object? amount = null,Object? payOption = null,Object? purposeOfTransfer = null,}) {
  return _then(_self.copyWith(
receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as ConnectedProfile,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,payOption: null == payOption ? _self.payOption : payOption // ignore: cast_nullable_to_non_nullable
as PaymentOption,purposeOfTransfer: null == purposeOfTransfer ? _self.purposeOfTransfer : purposeOfTransfer // ignore: cast_nullable_to_non_nullable
as PuroseOfTransfer,
  ));
}
/// Create a copy of SendMoneyRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectedProfileCopyWith<$Res> get receiver {
  
  return $ConnectedProfileCopyWith<$Res>(_self.receiver, (value) {
    return _then(_self.copyWith(receiver: value));
  });
}/// Create a copy of SendMoneyRequest
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

class _SendMoneyRequest implements SendMoneyRequest {
  const _SendMoneyRequest({required this.receiver, required this.amount, required this.payOption, required this.purposeOfTransfer});
  factory _SendMoneyRequest.fromJson(Map<String, dynamic> json) => _$SendMoneyRequestFromJson(json);

@override final  ConnectedProfile receiver;
@override final  double amount;
@override final  PaymentOption payOption;
@override final  PuroseOfTransfer purposeOfTransfer;

/// Create a copy of SendMoneyRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMoneyRequestCopyWith<_SendMoneyRequest> get copyWith => __$SendMoneyRequestCopyWithImpl<_SendMoneyRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendMoneyRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMoneyRequest&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.payOption, payOption) || other.payOption == payOption)&&(identical(other.purposeOfTransfer, purposeOfTransfer) || other.purposeOfTransfer == purposeOfTransfer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiver,amount,payOption,purposeOfTransfer);

@override
String toString() {
  return 'SendMoneyRequest(receiver: $receiver, amount: $amount, payOption: $payOption, purposeOfTransfer: $purposeOfTransfer)';
}


}

/// @nodoc
abstract mixin class _$SendMoneyRequestCopyWith<$Res> implements $SendMoneyRequestCopyWith<$Res> {
  factory _$SendMoneyRequestCopyWith(_SendMoneyRequest value, $Res Function(_SendMoneyRequest) _then) = __$SendMoneyRequestCopyWithImpl;
@override @useResult
$Res call({
 ConnectedProfile receiver, double amount, PaymentOption payOption, PuroseOfTransfer purposeOfTransfer
});


@override $ConnectedProfileCopyWith<$Res> get receiver;@override $PaymentOptionCopyWith<$Res> get payOption;

}
/// @nodoc
class __$SendMoneyRequestCopyWithImpl<$Res>
    implements _$SendMoneyRequestCopyWith<$Res> {
  __$SendMoneyRequestCopyWithImpl(this._self, this._then);

  final _SendMoneyRequest _self;
  final $Res Function(_SendMoneyRequest) _then;

/// Create a copy of SendMoneyRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiver = null,Object? amount = null,Object? payOption = null,Object? purposeOfTransfer = null,}) {
  return _then(_SendMoneyRequest(
receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as ConnectedProfile,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,payOption: null == payOption ? _self.payOption : payOption // ignore: cast_nullable_to_non_nullable
as PaymentOption,purposeOfTransfer: null == purposeOfTransfer ? _self.purposeOfTransfer : purposeOfTransfer // ignore: cast_nullable_to_non_nullable
as PuroseOfTransfer,
  ));
}

/// Create a copy of SendMoneyRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConnectedProfileCopyWith<$Res> get receiver {
  
  return $ConnectedProfileCopyWith<$Res>(_self.receiver, (value) {
    return _then(_self.copyWith(receiver: value));
  });
}/// Create a copy of SendMoneyRequest
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
