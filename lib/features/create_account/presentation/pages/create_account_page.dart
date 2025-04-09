import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/shared_widgets/app_snackbar.dart';
import 'package:coin_stack/core/utls/ui_helper.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/account_notifier_bloc/account_notifier_bloc.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/login_bloc/login_bloc.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/login_bloc/login_state.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/sign_up_bloc/sign_up_state.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_form.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/signup_or_login_button.dart';
import 'package:coin_stack/features/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:coin_stack/features/profile/presentation/bloc/user_bloc/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (_) => getIt<LoginBloc>(),
        child: MultiBlocListener(
          listeners: [
            BlocListener<SignUpBloc, SignUpState>(
              listener: (context, state) {
                if (state is SignUpGenerateOtpLoading) {
                  showLoader(context);
                } else if (state is SignUpGenerateOtpLoaded) {
                  Navigator.pop(context);
                  context.navigateTo(OtpPageRoute());
                } else if (state is SignUpGenerateOtpFailure) {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(AppSnackbar(data: state.failure.message));
                }
              },
            ),
            BlocListener<LoginBloc, LoginState>(
              listener: (context, state) {
                {
                  if (state is LoginLoading) {
                    showLoader(context);
                  } else if (state is LoginLoaded) {
                    Navigator.pop(context);
                    context.read<UserCubit>().loadUser();
                  } else if (state is LoginFailed) {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(AppSnackbar(data: state.failure.message));
                  }
                }
              },
            ),
            BlocListener<UserCubit, UserState>(
              listener: (context, state) {
                {
                  if (state is UserLoading) {
                    showLoader(context);
                  } else if (state is UserLoaded) {
                    Navigator.pop(context);
                    context.router.pushAndPopUntil(
                      DashboardMainRoute(),
                      predicate: (_) => false,
                    );
                  } else if (state is UserFailed) {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(AppSnackbar(data: state.f.message));
                  }
                }
              },
            ),
          ],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    BlocBuilder<AccountNotifierBloc, bool>(
                      builder: (context, isNewAcc) {
                        if (isNewAcc) {
                          return AccountProgressIndicator(value: .1);
                        }
                        return Container();
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppDimen.pagePadding,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 16),
                          BlocBuilder<AccountNotifierBloc, bool>(
                            builder: (context, isNewAcc) {
                              return Text(
                                isNewAcc
                                    ? "Create an Account"
                                    : "Login to CoinStack",
                                style: Theme.of(context).textTheme.titleLarge
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              );
                            },
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Enter your mobile number to verify your account',
                            style: Theme.of(context).textTheme.bodyLarge,
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 20),
                          AccountForm(),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: SignupOrLoginButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
