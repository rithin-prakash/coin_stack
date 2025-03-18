import 'package:flutter/material.dart';
import 'package:reactive_dropdown_search/reactive_dropdown_search.dart';

class AppAsyncDropdownSearchField extends StatelessWidget {
  AppAsyncDropdownSearchField({
    super.key,
    required this.controlName,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.prefixText,
  });

  final String controlName;
  final String? hintText;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final String? prefixText;

  final controller = TextEditingController();

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
        ReactiveDropdownSearch(
          formControlName: controlName,
          suffixProps: DropdownSuffixProps(
            dropdownButtonProps: DropdownButtonProps(
              iconOpened: Icon(Icons.keyboard_arrow_up, size: 24),
              iconClosed: Icon(Icons.keyboard_arrow_down, size: 24),
            ),
          ),
          compareFn: (item1, item2) {
            return true;
          },
        ),
      ],
    );
  }
}
