import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class CreatePasscodePage extends StatelessWidget {
  const CreatePasscodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AccountProgressIndicator(value: .6),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppDimen.pagePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 16),
                Text(
                  "Create your passcode",
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Create a passcode for your authentication',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 50),
                Align(
                  alignment: Alignment.center,
                  child: Pinput(
                    length: 4,
                    preFilledWidget: Text(
                      '\u25CF',
                      style: TextStyle(fontSize: 30, color: Colors.grey),
                    ),
                    defaultPinTheme: PinTheme(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(),
                    ),
                    obscureText: true,
                    obscuringCharacter: '\u25CF',
                    obscuringWidget: Text(
                      '\u25CF',
                      style: TextStyle(fontSize: 30),
                    ),
                    showCursor: false,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
