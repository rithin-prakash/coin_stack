import 'package:coin_stack/core/assets/app_assets.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TakeSelfieIntroPage extends StatelessWidget {
  const TakeSelfieIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          AccountProgressIndicator(value: .3),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppDimen.pagePadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                SvgPicture.asset(
                  AppAssets.takeSelfie,
                  width: MediaQuery.sizeOf(context).width - 100,
                ),
                SizedBox(height: 50),
                Text(
                  "Take selfie to verify your identity",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 12),
                Text(
                  "Quick and easy identification using your phone's camera. Confirm your identity with a self-captured photo.",
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: FloatingActionButton(
                    shape: const CircleBorder(),
                    onPressed: () {},
                    child: Icon(Icons.camera_alt_outlined),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Take selfie',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
