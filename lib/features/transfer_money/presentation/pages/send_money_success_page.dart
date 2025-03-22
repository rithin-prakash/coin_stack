import 'package:coin_stack/core/assets/app_assets.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SendMoneySuccessPage extends StatelessWidget {
  const SendMoneySuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // RiveAnimation.asset(AppAssets.confettiRive),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimen.pagePadding,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 20),
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: RiveAnimation.asset(AppAssets.successRive),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Back to Home'),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text('Make another Payment'),
                        ),
                      ),
                      SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          text:
                              'Thank you for using Coin Stack. If you have any concers, p;ease don\'t hesitate to ',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'contact us',
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
