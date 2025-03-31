import 'package:coin_stack/core/shared_widgets/app_phone_code_field.dart';
import 'package:coin_stack/core/shared_widgets/app_text_field.dart';
import 'package:coin_stack/core/utls/validation_helper.dart';
import 'package:coin_stack/features/create_account/presentation/providers/create_account_form.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AccountForm extends StatefulWidget {
  const AccountForm({super.key});

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<AccountForm> {
  var showPassword = false;
  @override
  Widget build(BuildContext context) {
    return ReactiveFormBuilder(
      form: () => null,
      builder: (context, form, child) {
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppPhoneCodeField(controlName: caPhoneCode, labelText: 'Phone'),
                SizedBox(width: 8),
                Expanded(
                  child: AppTextField(
                    controlName: caPhone,
                    hintText: 'Mobile Number',
                    labelText: "",
                    validationMsg: generateValidationMessages(phone, 'Phone'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            AppTextField(
              controlName: caPassword,
              hintText: '\u25CF\u25CF\u25CF\u25CF\u25CF\u25CF\u25CF\u25CF',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: Icon(Icons.visibility),
                onPressed:
                    () => setState(() {
                      showPassword = !showPassword;
                    }),
              ),
              obscureText: showPassword,
              validationMsg: generateValidationMessages(password, 'Password'),
            ),
          ],
        );
      },
    );
  }
}
