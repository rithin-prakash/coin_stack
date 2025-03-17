import 'package:coin_stack/core/shared_widgets/app_phone_code_field.dart';
import 'package:coin_stack/core/shared_widgets/app_text_field.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

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
