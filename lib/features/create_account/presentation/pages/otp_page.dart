import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/theme/app_colors.dart';
import 'package:coin_stack/features/create_account/presentation/providers/create_account_form.dart';
import 'package:coin_stack/features/create_account/presentation/providers/generate_otp.dart';
import 'package:coin_stack/features/create_account/presentation/providers/generate_otp_state.dart';
import 'package:coin_stack/features/create_account/presentation/providers/verify_otp.dart';
import 'package:coin_stack/features/create_account/presentation/providers/verify_otp_state.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

@RoutePage()
class OtpPage extends ConsumerStatefulWidget {
  const OtpPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OtpPageState();
}

class _OtpPageState extends ConsumerState<OtpPage> {
  @override
  void initState() {
    super.initState();
  }

  final pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ref.listen(generateOtpProvider, (prev, next) {
      if (next is GenerateOtpFailure) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(next.failure.message)));
        Navigator.pop(context);
      }
    });

    ref.listen(verifyOtpProvider, (_, v) {
      if (v is VerifyOtpSuccess) {
        context.replaceRoute(AddEmailPageRoute());
      } else if (v is VerifyOtpFailure) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(v.failure.message)));
      }
    });
    final generateOtp = ref.watch(generateOtpProvider);
    final verifyOtp = ref.watch(verifyOtpProvider);

    final form = ref.read(createAccFormProvider);
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
                    'We send 6 digit code to ${form.control(caPhoneCode).value} ${form.control(caPhone).value}',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 20),
                  Align(
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
                    ),
                  ),
                  if (kDebugMode && generateOtp is GenerateOtpSuccess)
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        generateOtp.val!,
                        textAlign: TextAlign.center,
                      ),
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
              child: ElevatedButton(
                onPressed:
                    generateOtp is GenerateOtpLoading ||
                            verifyOtp is VerifyOtpLoading
                        ? null
                        : () {
                          ref
                              .read(verifyOtpProvider.notifier)
                              .verifyOtp(pinController.text);
                        },
                child:
                    generateOtp is GenerateOtpLoading ||
                            verifyOtp is VerifyOtpLoading
                        ? CircularProgressIndicator.adaptive(
                          backgroundColor: Colors.white,
                        )
                        : Text('Verify Your Phone'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
