import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/create_account_tnc_bloc/create_acc_tnc_state.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/create_account_tnc_bloc/create_account_tnc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';

@RoutePage()
class CreateAccountTncPage extends StatelessWidget {
  const CreateAccountTncPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CreateAccountTncBloc>()..loadTnc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(backgroundColor: Colors.white),
            body: SafeArea(
              child: BlocBuilder<CreateAccountTncBloc, CreateAccTncState>(
                builder: (_, s) {
                  if (s is CreateAccTncLoading) {
                    return Center(child: CircularProgressIndicator.adaptive());
                  } else if (s is CreateAccTncFailed) {
                    return Center(child: Text(s.failure.message));
                  } else if (s is CreateAccTncLoaded) {
                    return Column(
                      children: [
                        // Text(
                        //   s.tnc.tncTitle,
                        //   style: Theme.of(context).textTheme.titleMedium,
                        // ),
                        Text(
                          "v${s.tnc.tncVersion}",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Html(data: s.tnc.tncHtml),
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
