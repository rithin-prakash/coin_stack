import 'package:coin_stack/core/app_router/app_router.dart';
import 'package:coin_stack/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:month_year_picker/month_year_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'CoinStack',
      theme: AppTheme.lightTheme,
      routerConfig: appRouter.config(),
      localizationsDelegates: [
        // GlobalMaterialLocalizations.delegate,
        MonthYearPickerLocalizations.delegate,
      ],
      // debugShowMaterialGrid: true,
    );
  }
}
