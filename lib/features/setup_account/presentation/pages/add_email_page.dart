import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/shared_widgets/app_text_field.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:coin_stack/features/setup_account/presentation/providers/email_form.dart';
import 'package:coin_stack/features/setup_account/presentation/providers/update_email.dart';
import 'package:coin_stack/features/setup_account/presentation/providers/update_email_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class AddEmailPage extends ConsumerWidget {
  const AddEmailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(updateEmailProvider, (p, v) {
      if (v is UpdateEmailSuccess) {
        context.replaceRoute(AddHomeAddressPageRoute());
      }
      if (v is UpdateEmailLoading) {
        showDialog(
          context: context,
          barrierColor: Colors.grey,
          barrierDismissible: false,
          builder:
              (_) => Dialog(
                backgroundColor: Colors.grey.shade100,
                child: Center(child: CircularProgressIndicator()),
              ),
        );
      } else if (p is UpdateEmailLoading) {
        Navigator.pop(context);
      } else if (v is UpdateEmailFailure) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text(v.failure.message),
          ),
        );
      }
    });
    return Scaffold(
      appBar: AppBar(),
      body: ReactiveFormBuilder(
        form: () => ref.read(emailFormProvider),
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
                          onPressed:
                              !form.valid
                                  ? null
                                  : () {
                                    ref
                                        .read(updateEmailProvider.notifier)
                                        .updateEmail();
                                  },
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
