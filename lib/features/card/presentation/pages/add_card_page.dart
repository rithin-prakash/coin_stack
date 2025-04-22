import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/shared_widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AddCardPage extends StatelessWidget {
  AddCardPage({super.key});

  final form = fb.group({
    'fullname': FormControl<String>(validators: [Validators.required]),
    'email': FormControl<String>(
      validators: [Validators.required, Validators.email],
    ),
    'card_number': FormControl<String>(
      validators: [
        Validators.required,
        Validators.minLength(12),
        Validators.maxLength(12),
        Validators.creditCard,
      ],
    ),
    'monthyear': FormControl<String>(validators: [Validators.required]),
    'cvv': FormControl<String>(validators: [Validators.required]),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ReactiveFormBuilder(
        form: () => form,
        builder: (_, form, _) {
          return Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppDimen.pagePadding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 16),
                      Text(
                        "Add card",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Enter your card details below',
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 16),
                      AppTextField(
                        controlName: 'fullname',
                        labelText: 'Account Holder Name',
                        hintText: 'Full Name',
                      ),
                      SizedBox(height: 16),
                      AppTextField(
                        controlName: 'email',
                        labelText: 'Email',
                        hintText: 'email@example.com',
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      SizedBox(height: 16),
                      AppTextField(
                        controlName: 'card_number',
                        labelText: 'Card Number',
                        hintText: '1234 5678 9012 3456',
                        prefixIcon: Icon(Icons.credit_card),
                      ),
                      SizedBox(height: 16),
                      AppTextField(
                        controlName: 'monthyear',
                        labelText: 'Month/Year',
                        hintText: 'MM/YY',
                        prefixIcon: Icon(Icons.calendar_month),
                      ),
                      SizedBox(height: 16),
                      AppTextField(
                        controlName: 'cvv',
                        labelText: 'CVV',
                        hintText: '\u25cf \u25cf \u25cf',
                        obscureText: true,
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
                  child: ReactiveFormConsumer(
                    builder:
                        (_, form, _) => ElevatedButton(
                          onPressed: !form.valid ? null : () {},
                          child: Text('Verify'),
                        ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
