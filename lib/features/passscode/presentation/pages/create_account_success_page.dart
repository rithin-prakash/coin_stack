import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/assets/app_assets.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class CreateAccountSuccessPage extends StatelessWidget {
  const CreateAccountSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Column(
        children: [
          AccountProgressIndicator(value: 1),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDimen.pagePadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppAssets.accSuccess,
                    width: MediaQuery.sizeOf(context).width - 100,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Congratulations!\nWelcome to CoinStack",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'We are happy to have you. It\'s time to send, receive and track your expense.',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppDimen.pagePadding),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                context.router.pushAndPopUntil(
                  DashboardMainRoute(),
                  predicate: (_) => false,
                );
              },
              child: Text('Continue'),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
