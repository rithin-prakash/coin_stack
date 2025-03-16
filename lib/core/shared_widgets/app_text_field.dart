import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controlName,
    this.hintText,
    this.labelText,
  });

  final String controlName;
  final String? hintText;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Text(
            labelText!,
            style: Theme.of(context).inputDecorationTheme.labelStyle,
          ),
        ReactiveTextField(
          formControlName: controlName,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          decoration: InputDecoration(
            hintText: hintText,
            // labelText: labelText,
          ),
        ),
      ],
    );
  }
}
