import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/shared_widgets/app_text_field.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AddHomeAddressPage extends StatelessWidget {
  AddHomeAddressPage({super.key});

  final form = fb.group({
    'address_lane': FormControl<String>(validators: [Validators.required]),
    'city': FormControl<String>(validators: [Validators.required]),
    'pin': FormControl<String>(
      validators: [
        Validators.required,
        Validators.minLength(6),
        Validators.maxLength(6),
      ],
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ReactiveFormBuilder(
        form: () => form,
        builder: (_, form, _) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AccountProgressIndicator(value: .1),
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
                        "Home address",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'This info needs to be accurate with your ID document',
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 16),
                      AppTextField(
                        controlName: 'address_lane',
                        labelText: 'Address Line',
                        hintText: 'John Doe',
                      ),
                      SizedBox(height: 16),

                      AppTextField(
                        controlName: 'city',
                        labelText: 'City',
                        hintText: 'City, State',
                      ),
                      SizedBox(height: 16),

                      AppTextField(
                        controlName: 'pin',
                        labelText: 'Postcode',
                        hintText: 'Eg: 653256',
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
                          child: Text('Continue'),
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
