import 'package:coin_stack/core/shared_widgets/app_phone_code_field.dart';
import 'package:coin_stack/core/shared_widgets/app_text_field.dart';
import 'package:coin_stack/core/utls/validation_helper.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/account_notifier_bloc/account_notifier_bloc.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/sigup_form_bloc/signup_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      form: () => context.read<SignupFormBloc>().form,
      builder: (context, form, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    validationMsg: generateValidationMessages(
                      context.read<SignupFormBloc>().passwordVal,
                      'Phone',
                    ),
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
              validationMsg: generateValidationMessages(
                context.read<SignupFormBloc>().passwordVal,
                'Password',
              ),
            ),
            SizedBox(height: 4),
            BlocBuilder<AccountNotifierBloc, bool>(
              builder: (_, s) {
                if (s) {
                  return Container();
                }
                return TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password?'),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
