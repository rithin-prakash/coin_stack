import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:month_year_picker/month_year_picker.dart';

class CalanderSelector extends StatefulWidget {
  const CalanderSelector({super.key});

  @override
  State<CalanderSelector> createState() => _CalanderSelectorState();
}

class _CalanderSelectorState extends State<CalanderSelector> {
  var seletecDateYear = DateTime.now();

  String get dateYearString => DateFormat.yMMM().format(seletecDateYear);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final selected = await showMonthYearPicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2019),
          lastDate: DateTime.now(),
        );

        if (selected != null) {
          setState(() {
            seletecDateYear = selected;
          });
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(dateYearString),
            SizedBox(width: 4),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
      ),
    );
  }
}
