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

import '../core/api_config/remote_api.dart' as _i285;
import '../core/api_config/remote_api_mock_impl.dart' as _i596;
import '../features/create_account/data/sign_up_repo_impl.dart' as _i510;
import '../features/create_account/domain/repos/sign_up_repo.dart' as _i764;
import '../features/create_account/presentation/blocs/account_notifier_bloc/account_notifier_bloc.dart'
    as _i175;
import '../features/create_account/presentation/blocs/sign_up_bloc/sign_up_bloc.dart'
    as _i135;
import '../features/profile/data/user_profile_repo_rest_api_impl.dart' as _i959;
import '../features/profile/domain/repos/user_profile_repo.dart' as _i619;
import '../features/profile/presentation/bloc/support_currency_bloc/support_currency_list_bloc.dart'
    as _i566;
import '../features/profile/presentation/bloc/user_bloc/user_bloc.dart'
    as _i486;
import '../features/setup_account/domain/repos/edit_acc_info_repo.dart'
    as _i257;
import '../features/setup_account/presentation/blocs/address_bloc/address_bloc.dart'
    as _i488;
import '../features/setup_account/presentation/blocs/country_list_bloc/country_list_bloc.dart'
    as _i222;
import '../features/setup_account/presentation/blocs/country_of_residence_bloc/country_of_residence_bloc.dart'
    as _i564;
import '../features/setup_account/presentation/blocs/email_bloc/email_bloc.dart'
    as _i55;
import '../features/setup_account/presentation/blocs/personal_info_bloc/personal_info_bloc.dart'
    as _i173;
import '../features/splash/data/splash_repo_impl.dart' as _i702;
import '../features/splash/domain/repos/splash_repo.dart' as _i73;
import '../features/splash/presentation/bloc/first_opening_cubit.dart' as _i319;

const String _mock = 'mock';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i175.AccountNotifierBloc>(() => _i175.AccountNotifierBloc());
    gh.lazySingleton<_i73.SplashRepo>(() => _i702.SplashRepoImpl());
    gh.factory<_i319.FirstOpeningCubit>(
      () => _i319.FirstOpeningCubit(gh<_i73.SplashRepo>()),
    );
    gh.lazySingleton<_i285.RemoteApi>(
      () => _i596.RemoteApiMockImpl(),
      registerFor: {_mock},
    );
    gh.lazySingleton<_i619.UserProfileRepo>(
      () => _i959.UserProfileRepoRestApiImpl(gh<_i285.RemoteApi>()),
    );
    gh.factory<_i488.AddressBloc>(
      () => _i488.AddressBloc(gh<_i257.EditAccInfoRepo>()),
    );
    gh.factory<_i173.PersonalInfoBloc>(
      () => _i173.PersonalInfoBloc(gh<_i257.EditAccInfoRepo>()),
    );
    gh.factory<_i564.CountryOfResidenceBloc>(
      () => _i564.CountryOfResidenceBloc(gh<_i257.EditAccInfoRepo>()),
    );
    gh.factory<_i55.EmailBloc>(
      () => _i55.EmailBloc(gh<_i257.EditAccInfoRepo>()),
    );
    gh.factory<_i222.CountryListBloc>(
      () => _i222.CountryListBloc(gh<_i257.EditAccInfoRepo>()),
    );
    gh.lazySingleton<_i764.SignUpRepo>(
      () => _i510.SignUpRepoImpl(gh<_i285.RemoteApi>()),
    );
    gh.factory<_i135.SignUpBloc>(
      () => _i135.SignUpBloc(gh<_i764.SignUpRepo>()),
    );
    gh.factory<_i566.SupportCurrencyListCubit>(
      () => _i566.SupportCurrencyListCubit(gh<_i619.UserProfileRepo>()),
    );
    gh.factory<_i486.UserCubit>(
      () => _i486.UserCubit(gh<_i619.UserProfileRepo>()),
    );
    return this;
  }
}
