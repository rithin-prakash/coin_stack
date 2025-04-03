import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/shared_widgets/app_snackbar.dart';
import 'package:coin_stack/core/theme/app_colors.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/sign_up_bloc/sign_up_event.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/sign_up_bloc/sign_up_state.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:coin_stack/features/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

@RoutePage()
class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<StatefulWidget> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  void initState() {
    super.initState();
  }

  final pinController = TextEditingController();
  final form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AccountProgressIndicator(value: .1),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDimen.pagePadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 16),
                  Text(
                    "Confirm your phone",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'We send 6 digit code to', // ${form.control(caPhoneCode).value} ${form.control(caPhone).value}',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 20),
                  Form(
                    key: form,
                    child: Align(
                      alignment: Alignment.center,
                      child: Pinput(
                        controller: pinController,
                        length: 6,
                        defaultPinTheme: PinTheme(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 2,
                                color: AppColors.inputBorder,
                              ),
                            ),
                          ),
                        ),
                        obscureText: true,
                        obscuringCharacter: '\u25CF',
                        showCursor: false,
                        validator: (value) {
                          if (value == null) {
                            return 'Pin shoulb not be empty';
                          } else if (value.length != 6) {
                            return 'Pin shoulb be valid';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  BlocBuilder<SignUpBloc, SignUpState>(
                    builder: (context, state) {
                      if (state is SignUpGenerateOtpLoaded && kDebugMode) {
                        return Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              state.otp ?? '',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      }
                      return SizedBox();
                    },
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        text: "Didn't get the code? ",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                        children: [
                          TextSpan(
                            text: 'Resend',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(AppDimen.pagePadding),
            margin: EdgeInsets.only(bottom: 20),
            child: SizedBox(
              width: double.infinity,
              child: BlocConsumer<SignUpBloc, SignUpState>(
                listener: (context, state) {
                  if (state is SignUpVerifyOtpLoaded) {
                    context.router.pushAndPopUntil(
                      PasscodePageRoute(),
                      predicate: (route) => false,
                    );

                    context.read<UserCubit>().loadUser();
                  } else if (state is SignUpVerifyOtpFailure) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(AppSnackbar(data: state.failure.message));
                  }
                },
                builder: (_, s) {
                  return ElevatedButton(
                    onPressed:
                        (s is SignUpVerifyOtpLoading)
                            ? null
                            : () {
                              if (form.currentState!.validate()) {
                                context.read<SignUpBloc>().add(
                                  SignUpEvent.verifyOtp(pinController.text),
                                );
                              }
                            },
                    child:
                        (s is SignUpVerifyOtpLoading)
                            ? CircularProgressIndicator.adaptive(
                              backgroundColor: Colors.white,
                            )
                            : Text('Verify Your Phone'),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
