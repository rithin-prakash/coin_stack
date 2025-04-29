import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/theme/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TnCAcreateAccount extends StatelessWidget {
  const TnCAcreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By continuing, you accpet our \n',
        style: TextStyle(
          color: Colors.black,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        children: [
          TextSpan(
            text: 'Terms and Conditions',
            recognizer:
                TapGestureRecognizer()
                  ..onTap =
                      () => context.navigateTo(CreateAccountTncPageRoute()),
            style: TextStyle(
              color: AppColors.primary,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
          TextSpan(
            text: ' and ',
            style: TextStyle(
              color: Colors.black,

              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
          TextSpan(
            text: 'Privacy Policy',
            recognizer:
                TapGestureRecognizer()
                  ..onTap =
                      () => context.navigateTo(
                        CreateAccountPrivacyPolicyPageRoute(),
                      ),
            style: TextStyle(
              color: AppColors.primary,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
        ],
      ),
    );
  }
}
