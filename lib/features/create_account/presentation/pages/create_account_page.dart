import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/shared_widgets/app_phone_code_field.dart';
import 'package:coin_stack/core/shared_widgets/app_text_field.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

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
                      onPressed: () {},
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

class AccountForm extends StatelessWidget {
  AccountForm({super.key});

  final form = fb.group({
    'password': Validators.email,
    'phone': Validators.email,
    'code': FormControl<CountryCode>(validators: [Validators.required]),
  });

  @override
  Widget build(BuildContext context) {
    return ReactiveFormBuilder(
      form: () => form,
      builder: (context, form, child) {
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AppPhoneCodeField(controlName: 'code', labelText: 'Phone'),
                SizedBox(width: 8),
                Expanded(
                  child: AppTextField(
                    controlName: 'phone',
                    hintText: 'Mobile Number',
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            AppTextField(
              controlName: 'password',
              hintText: '\u25CF\u25CF\u25CF\u25CF\u25CF\u25CF\u25CF\u25CF',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility),
              obscureText: true,
            ),
          ],
        );
      },
    );
  }
}
