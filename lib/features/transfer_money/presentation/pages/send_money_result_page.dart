import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/shared_widgets/app_snackbar.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transfer_details_bloc/transaction_details_state.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transfer_details_bloc/transfer_details_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/widgets/thank_contack_us_text.dart';
import 'package:coin_stack/features/transfer_money/presentation/widgets/tranasction_details.dart';
import 'package:coin_stack/features/transfer_money/presentation/widgets/transaction_status_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

@RoutePage()
class SendMoneyResultPage extends StatelessWidget {
  const SendMoneyResultPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TransferDetailsBloc>()..getDetails(id),
      child: Scaffold(
        body: SafeArea(
          child: Builder(
            builder: (context) {
              return BlocConsumer<TransferDetailsBloc, TransactionDetailsState>(
                listener: (context, state) {
                  // if (state is TransactionDetailsLoading) {
                  //   showLoader(context);
                  // } else if (state is TransactionDetailsLoaded) {
                  //   context.pop();
                  // } else
                  if (state is TransactionDetailsFailed) {
                    // context.pop();
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(AppSnackbar(data: state.failure.message));
                  }
                },
                builder: (_, s) {
                  if (s is TransactionDetailsLoading) {
                    return Padding(
                      padding: const EdgeInsets.all(AppDimen.pagePadding),
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.white30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),

                            Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Container(
                                  width: double.infinity,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                SizedBox(height: 8),

                                Container(
                                  width: double.infinity,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppDimen.pagePadding,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TransactionStatusAsset(),
                        TranasctionDetails(),
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
                            SizedBox(height: 20),
                            ThankContackUsText(),
                            SizedBox(height: 20),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
