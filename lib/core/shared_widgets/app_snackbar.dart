import 'package:flutter/material.dart';

enum SnackbarType { fail, success, neutral }

class AppSnackbar extends SnackBar {
  AppSnackbar({super.key, required this.data, this.type = SnackbarType.fail})
    : super(
        content: Text(data),
        backgroundColor:
            type == SnackbarType.fail
                ? Colors.red
                : type == SnackbarType.success
                ? Colors.green
                : Colors.grey,
        behavior: SnackBarBehavior.floating,
      );

  final String data;
  final SnackbarType type;
}
