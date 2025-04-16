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
import '../features/create_account/presentation/blocs/create_account_privacy_policy_bloc/create_account_privacy_bloc.dart'
    as _i883;
import '../features/create_account/presentation/blocs/create_account_tnc_bloc/create_account_tnc_bloc.dart'
    as _i386;
import '../features/create_account/presentation/blocs/login_bloc/login_bloc.dart'
    as _i444;
import '../features/create_account/presentation/blocs/sign_up_bloc/sign_up_bloc.dart'
    as _i135;
import '../features/create_account/presentation/blocs/sigup_form_bloc/signup_form_bloc.dart'
    as _i528;
import '../features/passscode/presentation/blocs/create_passcode_bloc/create_passcode_bloc.dart'
    as _i525;
import '../features/profile/data/user_profile_repo_rest_api_impl.dart' as _i959;
import '../features/profile/domain/repos/user_profile_repo.dart' as _i619;
import '../features/profile/presentation/bloc/support_currency_bloc/support_currency_list_bloc.dart'
    as _i566;
import '../features/profile/presentation/bloc/user_bloc/user_bloc.dart'
    as _i486;
import '../features/setup_account/data/edit_account_info_repo_rest_api_impl.dart'
    as _i1064;
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
import '../features/share_files/data/share_files_repo_share_plus_impl.dart'
    as _i792;
import '../features/share_files/domain/repo/share_files_repo.dart' as _i82;
import '../features/share_files/presentation/share_file_bloc/share_file_bloc.dart'
    as _i724;
import '../features/splash/data/splash_repo_impl.dart' as _i702;
import '../features/splash/domain/repos/splash_repo.dart' as _i73;
import '../features/splash/presentation/bloc/first_opening_cubit.dart' as _i319;
import '../features/transaction_history/data/txn_history_repo_rest_api_impl.dart'
    as _i39;
import '../features/transaction_history/domain/repos/txn_history_repo.dart'
    as _i482;
import '../features/transaction_history/presentation/blocs/selected_txn_cat_bloc/selected_txn_cat_bloc.dart'
    as _i1041;
import '../features/transaction_history/presentation/blocs/txn_by_category_bloc/txn_by_category_bloc.dart'
    as _i307;
import '../features/transfer_money/data/transfer_repo_rest_api_impl.dart'
    as _i778;
import '../features/transfer_money/domain/repos/transfer_repo.dart' as _i37;
import '../features/transfer_money/presentation/blocs/connected_profiles_bloc/connected_profiles_bloc.dart'
    as _i179;
import '../features/transfer_money/presentation/blocs/payment_option_bloc/payment_option_bloc.dart'
    as _i372;
import '../features/transfer_money/presentation/blocs/request_money_bloc/request_money_bloc.dart'
    as _i771;
import '../features/transfer_money/presentation/blocs/select_profile_bloc/select_profile_bloc.dart'
    as _i548;
import '../features/transfer_money/presentation/blocs/selecte_payment_option_bloc/select_payment_option_bloc.dart'
    as _i938;
import '../features/transfer_money/presentation/blocs/selected_purpose_bloc/select_purpose_bloc.dart'
    as _i561;
import '../features/transfer_money/presentation/blocs/send_money_bloc/send_money_bloc.dart'
    as _i409;
import '../features/transfer_money/presentation/blocs/transaction_process_type_bloc/transaction_process_type_bloc.dart'
    as _i1032;
import '../features/transfer_money/presentation/blocs/transfer_details_bloc/transfer_details_bloc.dart'
    as _i225;
import '../features/transfer_money/presentation/blocs/transfer_form_bloc/transfer_form_bloc.dart'
    as _i345;

const String _mock = 'mock';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i1032.TransactionProcessTypeBloc>(
      () => _i1032.TransactionProcessTypeBloc(),
    );
    gh.factory<_i345.TransferFormBloc>(() => _i345.TransferFormBloc());
    gh.factory<_i938.SelectPaymentOptionBloc>(
      () => _i938.SelectPaymentOptionBloc(),
    );
    gh.factory<_i561.SelectPurposeBloc>(() => _i561.SelectPurposeBloc());
    gh.factory<_i175.AccountNotifierBloc>(() => _i175.AccountNotifierBloc());
    gh.factory<_i528.SignupFormBloc>(() => _i528.SignupFormBloc());
    gh.factory<_i1041.SelectedTxnCatBloc>(() => _i1041.SelectedTxnCatBloc());
    gh.lazySingleton<_i482.TxnHistoryRepo>(
      () => _i39.TxnHistoryRepoResApiImpl(),
    );
    gh.lazySingleton<_i82.ShareFilesRepo>(
      () => _i792.ShareFilesRepoSharePlusImpl(),
    );
    gh.lazySingleton<_i73.SplashRepo>(() => _i702.SplashRepoImpl());
    gh.factory<_i319.FirstOpeningCubit>(
      () => _i319.FirstOpeningCubit(gh<_i73.SplashRepo>()),
    );
    gh.lazySingleton<_i37.TransferRepo>(() => _i778.TransferRepoRestApiImpl());
    gh.lazySingleton<_i285.RemoteApi>(
      () => _i596.RemoteApiMockImpl(),
      registerFor: {_mock},
    );
    gh.factory<_i724.ShareFileBloc>(
      () => _i724.ShareFileBloc(gh<_i82.ShareFilesRepo>()),
    );
    gh.factory<_i307.TxnByCategoryBloc>(
      () => _i307.TxnByCategoryBloc(gh<_i482.TxnHistoryRepo>()),
    );
    gh.factory<_i225.TransferDetailsBloc>(
      () => _i225.TransferDetailsBloc(gh<_i37.TransferRepo>()),
    );
    gh.factory<_i409.SendMoneyBloc>(
      () => _i409.SendMoneyBloc(gh<_i37.TransferRepo>()),
    );
    gh.factory<_i548.SelectProfileBloc>(
      () => _i548.SelectProfileBloc(gh<_i37.TransferRepo>()),
    );
    gh.factory<_i179.ConnectedProfilesBloc>(
      () => _i179.ConnectedProfilesBloc(gh<_i37.TransferRepo>()),
    );
    gh.factory<_i771.RequestMoneyBloc>(
      () => _i771.RequestMoneyBloc(gh<_i37.TransferRepo>()),
    );
    gh.factory<_i372.PaymentOptionBloc>(
      () => _i372.PaymentOptionBloc(gh<_i37.TransferRepo>()),
    );
    gh.lazySingleton<_i619.UserProfileRepo>(
      () => _i959.UserProfileRepoRestApiImpl(gh<_i285.RemoteApi>()),
    );
    gh.lazySingleton<_i257.EditAccInfoRepo>(
      () => _i1064.EditAccountInfoRepoRestApiImpl(gh<_i285.RemoteApi>()),
    );
    gh.factory<_i173.PersonalInfoBloc>(
      () => _i173.PersonalInfoBloc(gh<_i257.EditAccInfoRepo>()),
    );
    gh.factory<_i564.CountryOfResidenceBloc>(
      () => _i564.CountryOfResidenceBloc(gh<_i257.EditAccInfoRepo>()),
    );
    gh.factory<_i488.AddressBloc>(
      () => _i488.AddressBloc(gh<_i257.EditAccInfoRepo>()),
    );
    gh.factory<_i222.CountryListBloc>(
      () => _i222.CountryListBloc(gh<_i257.EditAccInfoRepo>()),
    );
    gh.factory<_i55.EmailBloc>(
      () => _i55.EmailBloc(gh<_i257.EditAccInfoRepo>()),
    );
    gh.lazySingleton<_i764.SignUpRepo>(
      () => _i510.SignUpRepoImpl(gh<_i285.RemoteApi>()),
    );
    gh.factory<_i135.SignUpBloc>(
      () => _i135.SignUpBloc(gh<_i764.SignUpRepo>()),
    );
    gh.factory<_i525.CreatePasscodeBloc>(
      () => _i525.CreatePasscodeBloc(gh<_i257.EditAccInfoRepo>()),
    );
    gh.factory<_i444.LoginBloc>(() => _i444.LoginBloc(gh<_i764.SignUpRepo>()));
    gh.factory<_i386.CreateAccountTncBloc>(
      () => _i386.CreateAccountTncBloc(gh<_i764.SignUpRepo>()),
    );
    gh.factory<_i883.CreateAccountPrivacyBloc>(
      () => _i883.CreateAccountPrivacyBloc(gh<_i764.SignUpRepo>()),
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
