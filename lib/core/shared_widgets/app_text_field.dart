import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controlName,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.prefixText,
    this.validationMsg,
    this.inputFormatters,
    this.textInputType,
  });

  final String controlName;
  final String? hintText;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final String? prefixText;
  final Map<String, String Function(Object)>? validationMsg;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (labelText != null)
          Text(
            labelText!,
            style: Theme.of(context).inputDecorationTheme.labelStyle,
          ),
        ReactiveTextField(
          formControlName: controlName,
          validationMessages: validationMsg,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          inputFormatters: inputFormatters,
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintText: hintText,
            // labelText: labelText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            prefixText: prefixText,
            errorMaxLines: 3,
            prefixStyle: TextStyle(color: Theme.of(context).primaryColor),
          ),
          obscureText: obscureText!,
          obscuringCharacter: '\u25CF',
        ),
      ],
    );
  }
}
