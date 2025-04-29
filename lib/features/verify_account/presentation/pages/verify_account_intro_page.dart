import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/assets/app_assets.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/create_account/presentation/widgets/account_progress_indicator.dart';
import 'package:coin_stack/features/profile/domain/models/user.dart';
import 'package:coin_stack/features/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:coin_stack/features/profile/presentation/bloc/user_bloc/user_state.dart';
import 'package:coin_stack/features/verify_account/presentation/widgets/account_verify_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class VerifyAccountIntroPage extends StatelessWidget {
  const VerifyAccountIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 1, child: AccountProgressIndicator(value: .3)),
          Expanded(
            flex: 150,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDimen.pagePadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    SvgPicture.asset(
                      AppAssets.setupAccIntro,
                      width: MediaQuery.sizeOf(context).width - 100,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Setting up your account",
                      style: Theme.of(context).textTheme.headlineLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'We are analyzing your data to verify',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    ListView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        OtpVerifyItem(),
                        DocumentVerifyItem(),
                        VerifPhotoItem(),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          var data =
                              context.read<UserCubit>().state as UserLoaded;
                          {
                            if (data.u.idVerified != IdVerifiedStatus.success) {
                              if (!context.mounted) return;
                              context.navigateTo(IdScanIntroPageRoute());
                            } else if (data.u.photoVerified !=
                                PhotoVerifiedStatus.success) {
                              if (!context.mounted) return;
                              context.navigateTo(TakeSelfieIntroPageRoute());
                            }
                          }
                        },
                        child: Text('Continue'),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
