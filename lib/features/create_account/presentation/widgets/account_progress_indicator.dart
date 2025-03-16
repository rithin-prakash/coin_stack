import 'package:flutter/material.dart';

class AccountProgressIndicator extends StatelessWidget {
  const AccountProgressIndicator({super.key, required this.value});

  final double value;

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      backgroundColor: Colors.grey.shade200,
    );
  }
}
