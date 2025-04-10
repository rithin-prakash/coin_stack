import 'package:coin_stack/app_bloc_observer.dart';
import 'package:coin_stack/core/app_router/app_router.dart';
import 'package:coin_stack/core/theme/app_theme.dart';
import 'package:coin_stack/di/build_env.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/account_notifier_bloc/account_notifier_bloc.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/sigup_form_bloc/signup_form_bloc.dart';
import 'package:coin_stack/features/profile/presentation/bloc/support_currency_bloc/support_currency_list_bloc.dart';
import 'package:coin_stack/features/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:coin_stack/features/share_files/presentation/share_file_bloc/share_file_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/select_profile_bloc/select_profile_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/selected_purpose_bloc/select_purpose_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transaction_process_type_bloc/transaction_process_type_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:month_year_picker/month_year_picker.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  configureDependencies(BuildEnv.mock);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<UserCubit>()),
        BlocProvider(create: (_) => getIt<AccountNotifierBloc>()),
        BlocProvider(create: (_) => getIt<SignUpBloc>()),
        BlocProvider(create: (_) => getIt<SupportCurrencyListCubit>()),
        BlocProvider(create: (_) => getIt<SignupFormBloc>()),
        BlocProvider(create: (_) => getIt<TransactionProcessTypeBloc>()),
        BlocProvider(create: (_) => getIt<SelectProfileBloc>()),
        BlocProvider(create: (_) => getIt<SelectPurposeBloc>()),
        BlocProvider(create: (_) => getIt<ShareFileBloc>()),
      ],
      child: MaterialApp.router(
        title: 'CoinStack',
        theme: AppTheme.lightTheme,
        routerConfig: appRouter.config(),
        localizationsDelegates: [
          // GlobalMaterialLocalizations.delegate,
          MonthYearPickerLocalizations.delegate,
        ],
        // debugShowMaterialGrid: true,
      ),
    );
  }
}
