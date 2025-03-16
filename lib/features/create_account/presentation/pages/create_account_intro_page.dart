import 'package:coin_stack/core/assets/app_assets.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/theme/app_colors.dart';
import 'package:coin_stack/features/create_account/presentation/pages/create_account_page.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountIntroPage extends StatelessWidget {
  const CreateAccountIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          AccountProgressIndicator(value: .1),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppDimen.pagePadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppAssets.createAccount,
                  // width: MediaQuery.sizeOf(context).width,
                ),
                Text(
                  "Create your Coinstack account",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Coinstack is powerful tool that allows you to easily send, receive and track all your transactions',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => CreateAccountPage()),
                      );
                    },
                    child: Text('Sign Up'),
                  ),
                ),
                SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('Log In'),
                  ),
                ),
                SizedBox(height: 20),
                RichText(
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
                        style: TextStyle(
                          color: AppColors.primary,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    ],
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
