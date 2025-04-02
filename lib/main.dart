import 'package:coin_stack/app_bloc_observer.dart';
import 'package:coin_stack/core/app_router/app_router.dart';
import 'package:coin_stack/core/theme/app_theme.dart';
import 'package:coin_stack/di/build_env.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/profile/presentation/bloc/user_bloc/user_bloc.dart';
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
      providers: [BlocProvider(create: (_) => getIt<UserCubit>())],
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
