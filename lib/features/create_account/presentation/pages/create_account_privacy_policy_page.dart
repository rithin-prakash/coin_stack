import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/create_account_privacy_policy_bloc/create_acc_privacy_state.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/create_account_privacy_policy_bloc/create_account_privacy_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';

@RoutePage()
class CreateAccountPrivacyPolicyPage extends StatelessWidget {
  const CreateAccountPrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CreateAccountPrivacyBloc>()..loadPrivacy(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(backgroundColor: Colors.white),
            body: SafeArea(
              child:
                  BlocBuilder<CreateAccountPrivacyBloc, CreateAccPrivacyState>(
                    builder: (_, s) {
                      if (s is CreateAccPrivacyLoading) {
                        return Center(
                          child: CircularProgressIndicator.adaptive(),
                        );
                      } else if (s is CreateAccPrivacyFailed) {
                        return Center(child: Text(s.failure.message));
                      } else if (s is CreateAccPrivacyLoaded) {
                        return Column(
                          children: [
                            // Text(
                            //   s.tnc.tncTitle,
                            //   style: Theme.of(context).textTheme.titleMedium,
                            // ),
                            Text(
                              "v${s.privacy.privacyVersion}",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Html(data: s.privacy.privacyHtml),
                              ),
                            ),
                          ],
                        );
                      }
                      return Container();
                    },
                  ),
            ),
          );
        },
      ),
    );
  }
}
