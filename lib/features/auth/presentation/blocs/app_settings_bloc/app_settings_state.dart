import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/auth/domain/models/app_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_state.freezed.dart';

@freezed
abstract class AppSettingsState with _$AppSettingsState {
  const factory AppSettingsState.initial() = AppSettingsInitial;
  const factory AppSettingsState.loading() = AppSettingsLoading;
  const factory AppSettingsState.loaded(AppSettings appsettings) =
      AppSettingsLoaded;
  const factory AppSettingsState.failed(Failure failure) = AppSettingsFailed;
}
