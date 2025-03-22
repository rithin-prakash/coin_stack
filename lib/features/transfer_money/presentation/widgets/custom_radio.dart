import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  const CustomRadio({super.key, required this.value, required this.color});

  final bool value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: color),
      ),
      child: Container(
        width: 5,
        height: 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: !value ? null : Border.all(color: color),
          color: value ? color : Colors.white,
        ),
      ),
    );
  }
}
