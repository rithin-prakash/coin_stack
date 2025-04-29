// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionDetailsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionDetailsState()';
}


}

/// @nodoc
class $TransactionDetailsStateCopyWith<$Res>  {
$TransactionDetailsStateCopyWith(TransactionDetailsState _, $Res Function(TransactionDetailsState) __);
}


/// @nodoc


class TransactionDetailsInitial implements TransactionDetailsState {
  const TransactionDetailsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionDetailsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionDetailsState.initial()';
}


}




/// @nodoc


class TransactionDetailsLoading implements TransactionDetailsState {
  const TransactionDetailsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionDetailsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransactionDetailsState.loading()';
}


}




/// @nodoc


class TransactionDetailsLoaded implements TransactionDetailsState {
  const TransactionDetailsLoaded(this.response);
  

 final  TransactionDetailsResponse response;

/// Create a copy of TransactionDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionDetailsLoadedCopyWith<TransactionDetailsLoaded> get copyWith => _$TransactionDetailsLoadedCopyWithImpl<TransactionDetailsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionDetailsLoaded&&(identical(other.response, response) || other.response == response));
}


@override
int get hashCode => Object.hash(runtimeType,response);

@override
String toString() {
  return 'TransactionDetailsState.loaded(response: $response)';
}


}

/// @nodoc
abstract mixin class $TransactionDetailsLoadedCopyWith<$Res> implements $TransactionDetailsStateCopyWith<$Res> {
  factory $TransactionDetailsLoadedCopyWith(TransactionDetailsLoaded value, $Res Function(TransactionDetailsLoaded) _then) = _$TransactionDetailsLoadedCopyWithImpl;
@useResult
$Res call({
 TransactionDetailsResponse response
});


$TransactionDetailsResponseCopyWith<$Res> get response;

}
/// @nodoc
class _$TransactionDetailsLoadedCopyWithImpl<$Res>
    implements $TransactionDetailsLoadedCopyWith<$Res> {
  _$TransactionDetailsLoadedCopyWithImpl(this._self, this._then);

  final TransactionDetailsLoaded _self;
  final $Res Function(TransactionDetailsLoaded) _then;

/// Create a copy of TransactionDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? response = null,}) {
  return _then(TransactionDetailsLoaded(
null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as TransactionDetailsResponse,
  ));
}

/// Create a copy of TransactionDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionDetailsResponseCopyWith<$Res> get response {
  
  return $TransactionDetailsResponseCopyWith<$Res>(_self.response, (value) {
    return _then(_self.copyWith(response: value));
  });
}
}

/// @nodoc


class TransactionDetailsFailed implements TransactionDetailsState {
  const TransactionDetailsFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of TransactionDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionDetailsFailedCopyWith<TransactionDetailsFailed> get copyWith => _$TransactionDetailsFailedCopyWithImpl<TransactionDetailsFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionDetailsFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'TransactionDetailsState.failed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $TransactionDetailsFailedCopyWith<$Res> implements $TransactionDetailsStateCopyWith<$Res> {
  factory $TransactionDetailsFailedCopyWith(TransactionDetailsFailed value, $Res Function(TransactionDetailsFailed) _then) = _$TransactionDetailsFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$TransactionDetailsFailedCopyWithImpl<$Res>
    implements $TransactionDetailsFailedCopyWith<$Res> {
  _$TransactionDetailsFailedCopyWithImpl(this._self, this._then);

  final TransactionDetailsFailed _self;
  final $Res Function(TransactionDetailsFailed) _then;

/// Create a copy of TransactionDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(TransactionDetailsFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of TransactionDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailureCopyWith<$Res> get failure {
  
  return $FailureCopyWith<$Res>(_self.failure, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

// dart format on
