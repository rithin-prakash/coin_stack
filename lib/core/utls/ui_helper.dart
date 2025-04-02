import 'package:coin_stack/core/shared_widgets/full_screen_loader.dart';
import 'package:flutter/material.dart';

showLoader(BuildContext context) {
  showDialog(
    context: context,
    useSafeArea: false,
    builder: (_) {
      return FullScreenLoader();
    },
  );
}
