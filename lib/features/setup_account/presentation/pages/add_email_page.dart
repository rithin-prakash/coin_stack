import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/shared_widgets/app_text_field.dart';
import 'package:coin_stack/core/utls/ui_helper.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:coin_stack/features/setup_account/presentation/blocs/email_bloc/email_bloc.dart';
import 'package:coin_stack/features/setup_account/presentation/blocs/email_bloc/update_email_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class AddEmailPage extends StatelessWidget {
  const AddEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<EmailBloc>(),
      child: Scaffold(
        appBar: AppBar(),
        body: Builder(
          builder: (context) {
            return BlocListener<EmailBloc, UpdateEmailState>(
              listener: (context, v) {
                if (v is UpdateEmailSuccess) {
                  Navigator.pop(context);
                  context.replaceRoute(AddHomeAddressPageRoute());
                }
                if (v is UpdateEmailLoading) {
                  showLoader(context);
                } else if (v is UpdateEmailFailure) {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(v.failure.message),
                    ),
                  );
                }
              },
              child: ReactiveFormBuilder(
                form: () => context.read<EmailBloc>().form,
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
                                style: Theme.of(context).textTheme.titleLarge
                                    ?.copyWith(fontWeight: FontWeight.bold),
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
                                            context
                                                .read<EmailBloc>()
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
          },
        ),
      ),
    );
  }
}
