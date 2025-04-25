import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/shared_widgets/app_text_field.dart';
import 'package:coin_stack/core/utls/validation_helper.dart';
import 'package:coin_stack/features/card/presentation/blocs/add_card_bloc/add_card_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class AddCardPage extends StatelessWidget {
  AddCardPage({super.key});

  final cardMaskFormatter = MaskTextInputFormatter(
    mask: "#### #### #### ####",
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  final monthYearMaskFormatter = MaskTextInputFormatter(
    mask: "##/##",
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(AppDimen.pagePadding),
        margin: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            if (context.read<AddCardBloc>().form.valid) {
            } else {
              context.read<AddCardBloc>().form.markAllAsTouched();
            }
          },
          child: Text('Verify'),
        ),
      ),
      body: ReactiveFormBuilder(
        form: () => context.read<AddCardBloc>().form,
        builder: (_, form, _) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppDimen.pagePadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 16),
                        Text(
                          "Add card",
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Enter your card details below',
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 16),
                        AppTextField(
                          controlName: cardFullName,
                          labelText: 'Account Holder Name',
                          hintText: 'Full Name',
                          validationMsg: generateValidationMessages(
                            context.read<AddCardBloc>().textVal,
                            'Account Holder Name',
                          ),
                        ),
                        SizedBox(height: 16),
                        AppTextField(
                          controlName: cardEmail,
                          labelText: 'Email',
                          hintText: 'email@example.com',
                          prefixIcon: Icon(Icons.email_outlined),
                          validationMsg: generateValidationMessages(
                            context.read<AddCardBloc>().cardEmailVal,
                            'Email',
                          ),
                        ),
                        SizedBox(height: 16),
                        AppTextField(
                          controlName: cardNumber,
                          labelText: 'Card Number',
                          hintText: '1234 5678 9012 3456',
                          prefixIcon: Icon(Icons.credit_card),
                          textInputType: TextInputType.number,
                          inputFormatters: [cardMaskFormatter],
                          validationMsg: generateValidationMessages(
                            context.read<AddCardBloc>().cardNumberValidation,
                            'Card Number',
                          ),
                        ),
                        SizedBox(height: 16),
                        AppTextField(
                          controlName: cardMonthYear,
                          labelText: 'Month/Year',
                          hintText: 'MM/YY',
                          prefixIcon: Icon(Icons.calendar_month),
                          inputFormatters: [monthYearMaskFormatter],
                          textInputType: TextInputType.number,
                          validationMsg: generateValidationMessages(
                            context.read<AddCardBloc>().monthYearValidation,
                            'Month/Year',
                          ),
                        ),
                        SizedBox(height: 16),
                        AppTextField(
                          controlName: cardCvv,
                          labelText: 'CVV',
                          hintText: '\u25cf \u25cf \u25cf',
                          obscureText: true,
                          textInputType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(3),
                          ],
                          validationMsg: generateValidationMessages(
                            context.read<AddCardBloc>().textVal,
                            'CVV',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
