import 'package:coin_stack/core/assets/app_assets.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(AppDimen.pagePadding),
        child: Column(
          children: [
            SvgPicture.asset(
              AppAssets.pageNotFound,
              width: MediaQuery.sizeOf(context).width,
            ),
            SizedBox(height: 20),
            Text(
              "Error 404",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              "Page Not Found",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              'Our dedicated team is here to to assist you with any questions or issues releated Coin Stack mobile app',
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Back To Home'),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
