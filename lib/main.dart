import 'package:coin_stack/core/app_router/app_router.dart';
import 'package:coin_stack/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:month_year_picker/month_year_picker.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      routerConfig: _appRouter.config(),
      localizationsDelegates: [
        // GlobalMaterialLocalizations.delegate,
        MonthYearPickerLocalizations.delegate,
      ],
      // debugShowMaterialGrid: true,
    );
  }
}
