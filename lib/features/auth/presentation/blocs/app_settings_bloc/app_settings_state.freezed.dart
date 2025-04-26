// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppSettingsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettingsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppSettingsState()';
}


}

/// @nodoc
class $AppSettingsStateCopyWith<$Res>  {
$AppSettingsStateCopyWith(AppSettingsState _, $Res Function(AppSettingsState) __);
}


/// @nodoc


class AppSettingsInitial implements AppSettingsState {
  const AppSettingsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettingsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppSettingsState.initial()';
}


}




/// @nodoc


class AppSettingsLoading implements AppSettingsState {
  const AppSettingsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettingsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppSettingsState.loading()';
}


}




/// @nodoc


class AppSettingsLoaded implements AppSettingsState {
  const AppSettingsLoaded(this.appsettings);
  

 final  AppSettings appsettings;

/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppSettingsLoadedCopyWith<AppSettingsLoaded> get copyWith => _$AppSettingsLoadedCopyWithImpl<AppSettingsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettingsLoaded&&(identical(other.appsettings, appsettings) || other.appsettings == appsettings));
}


@override
int get hashCode => Object.hash(runtimeType,appsettings);

@override
String toString() {
  return 'AppSettingsState.loaded(appsettings: $appsettings)';
}


}

/// @nodoc
abstract mixin class $AppSettingsLoadedCopyWith<$Res> implements $AppSettingsStateCopyWith<$Res> {
  factory $AppSettingsLoadedCopyWith(AppSettingsLoaded value, $Res Function(AppSettingsLoaded) _then) = _$AppSettingsLoadedCopyWithImpl;
@useResult
$Res call({
 AppSettings appsettings
});


$AppSettingsCopyWith<$Res> get appsettings;

}
/// @nodoc
class _$AppSettingsLoadedCopyWithImpl<$Res>
    implements $AppSettingsLoadedCopyWith<$Res> {
  _$AppSettingsLoadedCopyWithImpl(this._self, this._then);

  final AppSettingsLoaded _self;
  final $Res Function(AppSettingsLoaded) _then;

/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appsettings = null,}) {
  return _then(AppSettingsLoaded(
null == appsettings ? _self.appsettings : appsettings // ignore: cast_nullable_to_non_nullable
as AppSettings,
  ));
}

/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppSettingsCopyWith<$Res> get appsettings {
  
  return $AppSettingsCopyWith<$Res>(_self.appsettings, (value) {
    return _then(_self.copyWith(appsettings: value));
  });
}
}

/// @nodoc


class AppSettingsFailed implements AppSettingsState {
  const AppSettingsFailed(this.failure);
  

 final  Failure failure;

/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppSettingsFailedCopyWith<AppSettingsFailed> get copyWith => _$AppSettingsFailedCopyWithImpl<AppSettingsFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppSettingsFailed&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'AppSettingsState.failed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $AppSettingsFailedCopyWith<$Res> implements $AppSettingsStateCopyWith<$Res> {
  factory $AppSettingsFailedCopyWith(AppSettingsFailed value, $Res Function(AppSettingsFailed) _then) = _$AppSettingsFailedCopyWithImpl;
@useResult
$Res call({
 Failure failure
});


$FailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$AppSettingsFailedCopyWithImpl<$Res>
    implements $AppSettingsFailedCopyWith<$Res> {
  _$AppSettingsFailedCopyWithImpl(this._self, this._then);

  final AppSettingsFailed _self;
  final $Res Function(AppSettingsFailed) _then;

/// Create a copy of AppSettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(AppSettingsFailed(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}

/// Create a copy of AppSettingsState
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
