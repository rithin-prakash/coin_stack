import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/shared_widgets/app_snackbar.dart';
import 'package:coin_stack/core/utls/ui_helper.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/request_money_bloc/request_money_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/request_money_bloc/request_money_state.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/send_money_bloc/send_money_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/send_money_bloc/send_money_state.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transaction_process_type_bloc/transaction_process_type.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transaction_process_type_bloc/transaction_process_type_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transfer_form_bloc/transfer_form_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/widgets/account_select_pay_button_container.dart';
import 'package:coin_stack/features/transfer_money/presentation/widgets/transfer_amount_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class TransferMoneyPage extends StatelessWidget {
  const TransferMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<TransferFormBloc>()),
        BlocProvider(create: (_) => getIt<SendMoneyBloc>()),
        BlocProvider(create: (_) => getIt<RequestMoneyBloc>()),
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocListener(
            listeners: [
              BlocListener<SendMoneyBloc, SendMoneyState>(
                listener: (context, state) {
                  if (state is SendMoneyLoading) {
                    showLoader(context);
                  } else if (state is SendMoneyLoaded) {
                    context.pop();
                    context.navigateTo(
                      SendMoneyResultPageRoute(id: state.response.id),
                    );
                  } else if (state is SendMoneyFailed) {
                    context.pop();
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(AppSnackbar(data: state.failure.message));
                  }
                },
              ),
              BlocListener<RequestMoneyBloc, RequestMoneyState>(
                listener: (context, state) {
                  if (state is RequestMoneyLoading) {
                    showLoader(context);
                  } else if (state is RequestMoneyLoaded) {
                    context.pop();
                    context.navigateTo(
                      RequestMoneyResultPageRoute(id: state.response.id),
                    );
                  } else if (state is RequestMoneyFailed) {
                    context.pop();
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(AppSnackbar(data: state.failure.message));
                  }
                },
              ),
            ],
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(backgroundColor: Colors.grey.shade100),
              backgroundColor: Colors.grey.shade100,
              body: ReactiveFormBuilder(
                form: () => context.read<TransferFormBloc>().form,
                builder: (_, _, _) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppDimen.pagePadding,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BlocBuilder<
                                TransactionProcessTypeBloc,
                                TransactionProcessType
                              >(
                                builder: (_, state) {
                                  return Text(
                                    state == TransactionProcessType.send
                                        ? "Send money"
                                        : "Recieve Money",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  );
                                },
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Proceed by entering the amount',
                                style: Theme.of(context).textTheme.bodyLarge,
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(height: 20),
                              TransferAmountContainer(),
                            ],
                          ),
                        ),
                      ),
                      AccountSelectPayButtonContainer(),
                    ],
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
