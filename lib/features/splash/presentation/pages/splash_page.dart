import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/shared_widgets/app_snackbar.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/auth/presentation/blocs/app_settings_bloc/app_settings_bloc.dart';
import 'package:coin_stack/features/auth/presentation/blocs/app_settings_bloc/app_settings_state.dart';
import 'package:coin_stack/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:coin_stack/features/auth/presentation/blocs/auth_bloc/auth_state.dart';
import 'package:coin_stack/features/splash/presentation/bloc/first_opening_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    context.read<AppSettingsBloc>().getAppSettings();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<FirstOpeningCubit>(),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icon/icon.png'),
            SizedBox(height: 20),
            Builder(
              builder: (context) {
                return MultiBlocListener(
                  listeners: [
                    BlocListener<AppSettingsBloc, AppSettingsState>(
                      listener: (_, s) {
                        if (s is AppSettingsLoaded) {
                          context.read<AuthBloc>().isUserLoggedIn();
                        } else if (s is AppSettingsFailed) {
                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(AppSnackbar(data: s.failure.message));
                        }
                      },
                      child: SizedBox.shrink(),
                    ),
                    BlocListener<AuthBloc, AuthState>(
                      listener: (_, s) {
                        if (s is AuthLoaded) {
                          if (s.loggedIn) {
                            context.replaceRoute(DashboardMainRoute());
                          } else {
                            context.read<FirstOpeningCubit>().getValue();
                          }
                        } else if (s is AuthFailed) {
                          context.replaceRoute(CreateAccountIntroPageRoute());
                        }
                      },
                      child: SizedBox.shrink(),
                    ),
                    BlocListener<FirstOpeningCubit, bool>(
                      listener: (_, s) {
                        if (s) {
                          context.replaceRoute(IntroPageRoute());
                        } else {
                          context.replaceRoute(CreateAccountIntroPageRoute());
                        }
                      },
                      child: SizedBox.shrink(),
                    ),
                  ],
                  child: SizedBox.shrink(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
