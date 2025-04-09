import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/assets/app_assets.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/shared_widgets/app_snackbar.dart';
import 'package:coin_stack/core/utls/ui_helper.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/transfer_money/domain/models/transaction_details_response.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transfer_details_bloc/transaction_details_state.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transfer_details_bloc/transfer_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';

@RoutePage()
class SendMoneyResultPage extends StatelessWidget {
  const SendMoneyResultPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TransferDetailsBloc>()..getDetails(id),
      child: Scaffold(
        body: Builder(
          builder: (context) {
            return SafeArea(
              child: BlocListener<TransferDetailsBloc, TransactionDetailsState>(
                listener: (context, state) {
                  if (state is TransactionDetailsLoading) {
                    showLoader(context);
                  } else if (state is TransactionDetailsLoaded) {
                    // context.pop();
                  } else if (state is TransactionDetailsFailed) {
                    context.pop();
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(AppSnackbar(data: state.failure.message));
                  }
                },
                child: Stack(
                  children: [
                    BlocBuilder<TransferDetailsBloc, TransactionDetailsState>(
                      builder: (_, s) {
                        if (s is TransactionDetailsLoaded &&
                            (s.response.status == TxnStatusType.completed ||
                                s.response.status == TxnStatusType.refunded)) {
                          return Theme.of(context).brightness == Brightness.dark
                              ? RiveAnimation.asset(AppAssets.confettiDarkRive)
                              : RiveAnimation.asset(
                                AppAssets.confettiLightRive,
                              );
                        }
                        return Container();
                      },
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppDimen.pagePadding,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // SizedBox(height: 10),
                          BlocBuilder<
                            TransferDetailsBloc,
                            TransactionDetailsState
                          >(
                            builder: (_, s) {
                              if (s is TransactionDetailsLoaded) {
                                if (s.response.status ==
                                    TxnStatusType.completed) {
                                  return SizedBox(
                                    width: 200,
                                    height: 200,
                                    child:
                                        Theme.of(context).brightness ==
                                                Brightness.light
                                            ? RiveAnimation.asset(
                                              AppAssets.successRive,
                                            )
                                            : RiveAnimation.asset(
                                              AppAssets.successRive,
                                            ),

                                    // RiveAnimation.asset(AppAssets.successRive),
                                  );
                                } else if (s.response.status ==
                                    TxnStatusType.failed) {
                                  SizedBox(
                                    width: 200,
                                    height: 200,
                                    child:
                                        Theme.of(context).brightness ==
                                                Brightness.light
                                            ? RiveAnimation.asset(
                                              AppAssets.failedLightRive,
                                            )
                                            : RiveAnimation.asset(
                                              AppAssets.failedLightRive,
                                            ),

                                    // RiveAnimation.asset(AppAssets.successRive),
                                  );
                                }
                              }
                              return SizedBox(
                                width: 200,
                                height: 200,
                                child:
                                    Theme.of(context).brightness ==
                                            Brightness.light
                                        ? RiveAnimation.asset(
                                          AppAssets.pendingRive,
                                        )
                                        : RiveAnimation.asset(
                                          AppAssets.pendingRive,
                                        ),

                                // RiveAnimation.asset(AppAssets.successRive),
                              );
                            },
                          ),

                          BlocBuilder<
                            TransferDetailsBloc,
                            TransactionDetailsState
                          >(
                            builder: (_, state) {
                              if (state is TransactionDetailsLoaded) {
                                return Container(
                                  padding: EdgeInsets.all(12),

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      AppDimen.containerBorderRadius,
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      LabelValue(
                                        label: "Transaction ID",
                                        value: state.response.id,
                                      ),
                                      LabelValue(
                                        label: "Transfered To",
                                        value:
                                            state.response.receiveProfile.name,
                                      ),
                                      LabelValue(
                                        label: "Receiver Name",
                                        value:
                                            state.response.receiveProfile.name,
                                      ),
                                      LabelValue(
                                        label: "Receiver ID",
                                        value: state.response.receiveProfile.id,
                                      ),
                                      LabelValue(
                                        label: "Transaction Status",
                                        value: state.response.status.named(),
                                      ),
                                      if (state.response.status ==
                                          TxnStatusType.completed)
                                        LabelValue(
                                          label: "Completed Date&Time",
                                          value:
                                              state.response.completedTime!
                                                  .toIso8601String(),
                                        ),
                                    ],
                                  ),
                                );
                              }
                              return Container();
                            },
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 20),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    context.router.pushAndPopUntil(
                                      DashboardMainRoute(),
                                      predicate: (_) => false,
                                    );
                                  },
                                  child: Text('Back to Home'),
                                ),
                              ),
                              // SizedBox(height: 20),
                              // SizedBox(
                              //   width: double.infinity,
                              //   child: OutlinedButton(
                              //     onPressed: () {},
                              //     child: Text('Make another Payment'),
                              //   ),
                              // ),
                              SizedBox(height: 20),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text:
                                      'Thank you for using Coin Stack. If you have any concers, please don\'t hesitate to ',
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: 'contact us',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium?.copyWith(
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class LabelValue extends StatelessWidget {
  const LabelValue({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          SizedBox(width: 8),
          Flexible(child: Text(value)),
        ],
      ),
    );
  }
}
