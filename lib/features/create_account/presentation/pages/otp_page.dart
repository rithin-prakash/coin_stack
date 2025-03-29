import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/theme/app_colors.dart';
import 'package:coin_stack/features/create_account/presentation/providers/create_account_form.dart';
import 'package:coin_stack/features/create_account/presentation/providers/generate_otp.dart';
import 'package:coin_stack/features/create_account/presentation/providers/generate_otp_state.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
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

  @override
  Widget build(BuildContext context) {
    ref.listen(generateOtpProvider, (prev, next) {
      if (next is GenerateOtpFailure) {
        Navigator.pop(context);
      }
    });
    final generateOtp = ref.watch(generateOtpProvider);
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
          // if (generateOtp == GenerateOtpState.loading())
          //   CircularProgressIndicator()
          // else
          Container(
            padding: const EdgeInsets.all(AppDimen.pagePadding),
            margin: EdgeInsets.only(bottom: 20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.replaceRoute(AddEmailPageRoute());
                },
                child: Text('Verify Your Phone'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
