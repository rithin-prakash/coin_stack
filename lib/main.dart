import 'package:coin_stack/core/theme/app_theme.dart';
import 'package:coin_stack/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:coin_stack/features/transfer_money/presentation/pages/choose_receipient_page.dart';
import 'package:coin_stack/features/transfer_money/presentation/pages/select_purpose_page.dart';
import 'package:coin_stack/features/transfer_money/presentation/pages/transfer_money_page.dart';
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
      home: TransferMoneyPage(),
      // debugShowMaterialGrid: true,
    );
  }
}
