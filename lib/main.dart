import 'package:coin_stack/core/theme/app_theme.dart';
import 'package:coin_stack/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:coin_stack/features/transaction_history/presentation/pages/transaction_history_page.dart';
import 'package:flutter/material.dart';
import 'package:month_year_picker/month_year_picker.dart';

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
      home: DashboardPage(),
      localizationsDelegates: [
        // GlobalMaterialLocalizations.delegate,
        MonthYearPickerLocalizations.delegate,
      ],
      // debugShowMaterialGrid: true,
    );
  }
}
