import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/shared_widgets/app_date_time_picker_field.dart';
import 'package:coin_stack/core/shared_widgets/app_text_field.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:coin_stack/features/setup_account/presentation/blocs/personal_info_bloc/personal_info_bloc.dart';
import 'package:coin_stack/features/setup_account/presentation/blocs/personal_info_bloc/update_personal_info_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class AddPersonalInfoPage extends StatelessWidget {
  const AddPersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocListener(
        listener: (context, v) {
          if (v is UpdatePersonalInfoSuccess) {
            Navigator.pop(context);
            context.replaceRoute(AddCountryOfResidenceRoute());
          }
          if (v is UpdatePersonalInfoLoading) {
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
          } else if (v is UpdatePersonalInfoFailure) {
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
          form: () => context.read<PersonalInfoBloc>().form,
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
                          "Add your personal info",
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'This info needs to be accurate with your ID document',
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 16),
                        AppTextField(
                          controlName: 'full_name',
                          labelText: 'Full Name',
                          hintText: 'Mr. John Doe',
                        ),
                        SizedBox(height: 16),
                        AppTextField(
                          controlName: 'username',
                          labelText: 'Username',
                          hintText: 'username',
                          prefixText: "@",
                        ),
                        SizedBox(height: 16),
                        AppDateTimePickerField(
                          controlName: 'dob',
                          labelText: 'Date of Birth',
                          hintText: 'DD/MM/YYYY',
                          prefixIcon: Icon(Icons.calendar_today),
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
                                          .read<PersonalInfoBloc>()
                                          .updatePersonalInfo();
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
      ),
    );
  }
}
