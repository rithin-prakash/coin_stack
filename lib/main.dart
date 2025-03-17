import 'package:coin_stack/core/theme/app_theme.dart';
import 'package:coin_stack/features/create_account/presentation/pages/create_account_page.dart';
import 'package:coin_stack/features/create_account/presentation/pages/otp_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: const CreateAccountPage(),
      // debugShowMaterialGrid: true,
    );
  }
}
