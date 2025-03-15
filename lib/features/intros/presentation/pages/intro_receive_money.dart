import 'package:coin_stack/core/assets/app_assets.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IntroReceiveMoney extends StatelessWidget {
  const IntroReceiveMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppDimen.intoPadding),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppAssets.introReceiveMoney),
                  SizedBox(height: 30),
                  Text(
                    "Receive Money From Anywhere In The World",
                    style: Theme.of(context).textTheme.displayMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text("Next")),
              ),
            ),
            SizedBox(height: AppDimen.intoBottomHeight),
          ],
        ),
      ),
    );
  }
}
