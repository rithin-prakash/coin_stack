// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_file_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShareFileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShareFileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShareFileState()';
}


}

/// @nodoc
class $ShareFileStateCopyWith<$Res>  {
$ShareFileStateCopyWith(ShareFileState _, $Res Function(ShareFileState) __);
}


/// @nodoc


class ShareFileInitial implements ShareFileState {
  const ShareFileInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShareFileInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShareFileState.initial()';
}


}




/// @nodoc


class ShareFileLoading implements ShareFileState {
  const ShareFileLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShareFileLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShareFileState.loading()';
}


}




/// @nodoc


class ShareFileDone implements ShareFileState {
  const ShareFileDone();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShareFileDone);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShareFileState.done()';
}


}




/// @nodoc


class ShareFileFailure implements ShareFileState {
  const ShareFileFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of ShareFileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShareFileFailureCopyWith<ShareFileFailure> get copyWith => _$ShareFileFailureCopyWithImpl<ShareFileFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShareFileFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'ShareFileState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ShareFileFailureCopyWith<$Res> implements $ShareFileStateCopyWith<$Res> {
  factory $ShareFileFailureCopyWith(ShareFileFailure value, $Res Function(ShareFileFailure) _then) = _$ShareFileFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$ShareFileFailureCopyWithImpl<$Res>
    implements $ShareFileFailureCopyWith<$Res> {
  _$ShareFileFailureCopyWithImpl(this._self, this._then);

  final ShareFileFailure _self;
  final $Res Function(ShareFileFailure) _then;

/// Create a copy of ShareFileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(ShareFileFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of ShareFileState
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
