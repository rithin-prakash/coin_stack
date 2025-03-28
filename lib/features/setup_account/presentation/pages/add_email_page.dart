import 'package:auto_route/annotations.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/shared_widgets/app_text_field.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class AddEmailPage extends StatelessWidget {
  AddEmailPage({super.key});
  final form = fb.group({
    'email': FormControl<String>(
      validators: [Validators.required, Validators.email],
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
                        "Add your email",
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
                      SizedBox(height: 20),
                      AppTextField(
                        controlName: 'email',
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email_outlined),
                        hintText: 'name@example.com',
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
