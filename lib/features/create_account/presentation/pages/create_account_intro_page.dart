import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/assets/app_assets.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/account_notifier_bloc/account_notifier_bloc.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/tn_c_acreate_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class CreateAccountIntroPage extends StatelessWidget {
  const CreateAccountIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AccountProgressIndicator(value: .1),
          SvgPicture.asset(
            AppAssets.createAccount,
            // width: MediaQuery.sizeOf(context).width,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppDimen.pagePadding,
              vertical: AppDimen.pagePadding,
            ),
            child: Column(
              children: [
                Text(
                  "Create your Coinstack account",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Coinstack is powerful tool that allows you to easily send, receive and track all your transactions',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.navigateTo(CreateAccountPageRoute());
                      context.read<AccountNotifierBloc>().creatingAcc(true);
                    },
                    child: Text('Sign Up'),
                  ),
                ),
                SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () async {
                      context.navigateTo(CreateAccountPageRoute());
                      context.read<AccountNotifierBloc>().creatingAcc(false);
                    },
                    child: Text('Log In'),
                  ),
                ),
                SizedBox(height: 20),
                TnCAcreateAccount(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
