import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppPhoneCodeField extends ReactiveFormField<CountryCode, CountryCode> {
  AppPhoneCodeField({
    super.key,
    required String controlName,
    super.validationMessages,
    String? labelText,
  }) : super(
         formControlName: controlName,
         builder: (field) {
           return Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               if (labelText != null)
                 Text(
                   labelText,
                   style:
                       Theme.of(field.context).inputDecorationTheme.labelStyle,
                 ),
               Container(
                 height: 56,
                 decoration: BoxDecoration(
                   border: Border(
                     bottom:
                         Theme.of(
                           field.context,
                         ).inputDecorationTheme.border!.borderSide,
                     left:
                         Theme.of(
                           field.context,
                         ).inputDecorationTheme.border!.borderSide,
                     right:
                         Theme.of(
                           field.context,
                         ).inputDecorationTheme.border!.borderSide,
                     top:
                         Theme.of(
                           field.context,
                         ).inputDecorationTheme.border!.borderSide,
                   ),
                   borderRadius: BorderRadius.circular(
                     AppDimen.inputBorderRadius,
                   ),
                   color: Theme.of(field.context).scaffoldBackgroundColor,
                 ),
                 padding: EdgeInsets.zero,
                 child: CountryCodePicker(
                   initialSelection: field.value?.code,
                   padding: EdgeInsets.zero,
                   onChanged: (value) {
                     field.didChange(value);
                   },
                 ),
               ),
             ],
           );
         },
       );
}
