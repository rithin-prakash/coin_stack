import 'package:coin_stack/features/auth/domain/repos/auth_repo.dart';
import 'package:coin_stack/features/auth/presentation/blocs/app_settings_bloc/app_settings_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppSettingsBloc extends Cubit<AppSettingsState> {
  final AuthRepo _repo;

  AppSettingsBloc(this._repo) : super(AppSettingsState.initial());

  getAppSettings() async {
    emit(AppSettingsState.loading());

    final res = await _repo.loadAppSettings();

    res.fold(
      (l) => emit(AppSettingsState.failed(l)),
      (r) => emit(AppSettingsState.loaded(r)),
    );
  }
}
