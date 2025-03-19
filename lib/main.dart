import 'package:coin_stack/core/theme/app_theme.dart';
import 'package:coin_stack/features/passscode/presentation/pages/create_account_success_page.dart';
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
      home: CreateAccountSuccessPage(),
      // debugShowMaterialGrid: true,
    );
  }
}
