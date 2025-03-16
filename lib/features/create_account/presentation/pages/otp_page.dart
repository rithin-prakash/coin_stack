import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/theme/app_colors.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AccountProgressIndicator(value: .1),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppDimen.pagePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 16),
                Text(
                  "Confirm your phone",
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'We send 6 digit code to +886775849',
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
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Verify Your Phone'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
