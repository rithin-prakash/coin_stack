import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/shared_widgets/app_text_field.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:coin_stack/features/setup_account/presentation/providers/address_form.dart';
import 'package:coin_stack/features/setup_account/presentation/providers/update_address.dart';
import 'package:coin_stack/features/setup_account/presentation/providers/update_address_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class AddHomeAddressPage extends ConsumerWidget {
  const AddHomeAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    ref.listen(updateAddressProvider, (p, v) {
      if (v is UpdateAddressSuccess) {
        context.replaceRoute(AddPersonalInfoPageRoute());
      }
      if (v is UpdateAddressLoading) {
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
      } else if (p is UpdateAddressLoading) {
        Navigator.pop(context);
      } else if (v is UpdateAddressFailure) {
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
        form: () => ref.read(addressFormProvider),
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
                        controlName: upAddress,
                        labelText: 'Address Line',
                        hintText: 'John Doe',
                      ),
                      SizedBox(height: 16),

                      AppTextField(
                        controlName: upCity,
                        labelText: 'City',
                        hintText: 'City, State',
                      ),
                      SizedBox(height: 16),

                      AppTextField(
                        controlName: upPin,
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
                          onPressed:
                              !form.valid
                                  ? null
                                  : () {
                                    ref
                                        .read(updateAddressProvider.notifier)
                                        .updateAddress();
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
