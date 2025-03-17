import 'package:coin_stack/core/assets/app_assets.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/create_account/presentation/pages/otp_page.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_form.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

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
                  width: MediaQuery.sizeOf(context).width - 100,
                ),
                Text(
                  'Verify your phone number before we send the code',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
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
                    onPressed:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => OtpPage()),
                        ),
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
                  "Create an Account",
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Enter your mobile number to verify your account',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 20),
                Flexible(fit: FlexFit.loose, child: AccountForm()),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        showVerifyPhoneDialog(context, '+5435454656');
                      },
                      child: Text('Sign Up'),
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
