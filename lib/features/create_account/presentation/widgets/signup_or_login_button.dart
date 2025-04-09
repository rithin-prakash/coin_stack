import 'package:coin_stack/core/assets/app_assets.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/account_notifier_bloc/account_notifier_bloc.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/login_bloc/login_bloc.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/sign_up_bloc/sign_up_event.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/sigup_form_bloc/signup_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupOrLoginButton extends StatelessWidget {
  const SignupOrLoginButton({super.key});

  showVerifyPhoneDialog(BuildContext context, String phone) {
    showDialog(
      context: context,
      builder: (_) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    child: Icon(Icons.close),
                    onTap: () => Navigator.pop(context),
                  ),
                ),
                SvgPicture.asset(
                  AppAssets.sms,
                  width: MediaQuery.sizeOf(context).width - 200,
                ),
                Text(
                  'Verify your phone number before we send the code',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                RichText(
                  text: TextSpan(
                    text: 'Is this correct? ',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: phone,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      final code = context.read<SignupFormBloc>().phoneCode;
                      final phone = context.read<SignupFormBloc>().phoneValue;
                      context.read<SignUpBloc>().add(
                        SignUpGenerateOtp(phone: phone, phoneCode: code),
                      );
                    },
                    child: Text('Yes'),
                  ),
                ),
                SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('No'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDimen.pagePadding),
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      child: BlocBuilder<AccountNotifierBloc, bool>(
        builder: (context, isNewAcc) {
          if (isNewAcc) {
            return ElevatedButton(
              onPressed: () {
                if (context.read<SignupFormBloc>().form.valid) {
                  final code = context.read<SignupFormBloc>().phoneCode;
                  final phone = context.read<SignupFormBloc>().phoneValue;

                  showVerifyPhoneDialog(context, '$code$phone');
                } else {
                  context.read<SignupFormBloc>().form.markAllAsTouched();
                }
              },
              child: Text('Sign Up'),
            );
          }
          return ElevatedButton(
            onPressed: () {
              final form = context.read<SignupFormBloc>().form;
              if (form.valid) {
                final password = context.read<SignupFormBloc>().password;
                final phone = context.read<SignupFormBloc>().phoneValue;
                final code = context.read<SignupFormBloc>().phoneCode;

                context.read<LoginBloc>().login(code, phone, password);
              }
            },
            child: Text('Log In'),
          );
        },
      ),
    );
  }
}
