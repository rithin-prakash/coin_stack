// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connected_profiles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConnectedProfilesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectedProfilesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectedProfilesState()';
}


}

/// @nodoc
class $ConnectedProfilesStateCopyWith<$Res>  {
$ConnectedProfilesStateCopyWith(ConnectedProfilesState _, $Res Function(ConnectedProfilesState) __);
}


/// @nodoc


class ConnectedProfilesInitial implements ConnectedProfilesState {
  const ConnectedProfilesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectedProfilesInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectedProfilesState.initial()';
}


}




/// @nodoc


class ConnectedProfilesLoading implements ConnectedProfilesState {
  const ConnectedProfilesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectedProfilesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectedProfilesState.loading()';
}


}




/// @nodoc


class ConnectedProfilesLoaded implements ConnectedProfilesState {
  const ConnectedProfilesLoaded(final  List<ConnectedProfile> list): _list = list;
  

 final  List<ConnectedProfile> _list;
 List<ConnectedProfile> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}


/// Create a copy of ConnectedProfilesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectedProfilesLoadedCopyWith<ConnectedProfilesLoaded> get copyWith => _$ConnectedProfilesLoadedCopyWithImpl<ConnectedProfilesLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectedProfilesLoaded&&const DeepCollectionEquality().equals(other._list, _list));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list));

@override
String toString() {
  return 'ConnectedProfilesState.loaded(list: $list)';
}


}

/// @nodoc
abstract mixin class $ConnectedProfilesLoadedCopyWith<$Res> implements $ConnectedProfilesStateCopyWith<$Res> {
  factory $ConnectedProfilesLoadedCopyWith(ConnectedProfilesLoaded value, $Res Function(ConnectedProfilesLoaded) _then) = _$ConnectedProfilesLoadedCopyWithImpl;
@useResult
$Res call({
 List<ConnectedProfile> list
});




}
/// @nodoc
class _$ConnectedProfilesLoadedCopyWithImpl<$Res>
    implements $ConnectedProfilesLoadedCopyWith<$Res> {
  _$ConnectedProfilesLoadedCopyWithImpl(this._self, this._then);

  final ConnectedProfilesLoaded _self;
  final $Res Function(ConnectedProfilesLoaded) _then;

/// Create a copy of ConnectedProfilesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? list = null,}) {
  return _then(ConnectedProfilesLoaded(
null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<ConnectedProfile>,
  ));
}


}

/// @nodoc


class ConnectedProfilesFailed implements ConnectedProfilesState {
  const ConnectedProfilesFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of ConnectedProfilesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectedProfilesFailedCopyWith<ConnectedProfilesFailed> get copyWith => _$ConnectedProfilesFailedCopyWithImpl<ConnectedProfilesFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectedProfilesFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'ConnectedProfilesState.failed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ConnectedProfilesFailedCopyWith<$Res> implements $ConnectedProfilesStateCopyWith<$Res> {
  factory $ConnectedProfilesFailedCopyWith(ConnectedProfilesFailed value, $Res Function(ConnectedProfilesFailed) _then) = _$ConnectedProfilesFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$ConnectedProfilesFailedCopyWithImpl<$Res>
    implements $ConnectedProfilesFailedCopyWith<$Res> {
  _$ConnectedProfilesFailedCopyWithImpl(this._self, this._then);

  final ConnectedProfilesFailed _self;
  final $Res Function(ConnectedProfilesFailed) _then;

/// Create a copy of ConnectedProfilesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(ConnectedProfilesFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of ConnectedProfilesState
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
