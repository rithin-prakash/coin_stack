import 'package:coin_stack/core/assets/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IntroMoneyAbroad extends StatelessWidget {
  const IntroMoneyAbroad({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppAssets.introMoneyAbroad),
        SizedBox(height: 30),
        Text(
          "Spend money abroad, and track your expense",
          style: Theme.of(context).textTheme.displayMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
