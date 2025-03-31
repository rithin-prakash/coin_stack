// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../features/splash/data/splash_repo_impl.dart' as _i702;
import '../features/splash/domain/repos/splash_repo.dart' as _i73;
import '../features/splash/presentation/bloc/first_opening_cubit.dart' as _i319;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i73.SplashRepo>(() => _i702.SplashRepoImpl());
    gh.factory<_i319.FirstOpeningCubit>(
      () => _i319.FirstOpeningCubit(gh<_i73.SplashRepo>()),
    );
    return this;
  }
}
