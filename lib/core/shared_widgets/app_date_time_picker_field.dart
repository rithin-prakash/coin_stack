import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';

class AppDateTimePickerField extends StatelessWidget {
  AppDateTimePickerField({
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
        ReactiveDateTimePicker(
          formControlName: controlName,
          type: ReactiveDatePickerFieldType.date,
          dateFormat: DateFormat("dd/MM/yyyy"),
          lastDate: DateTime.now().subtract(Duration(days: 365 * 18)),
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(Icons.calendar_today),
          ),
          valueBuilder:
              (_, value) => Text(value ?? '', overflow: TextOverflow.ellipsis),
        ),
      ],
    );
  }
}
