import 'package:coin_stack/core/assets/app_assets.dart';
import 'package:coin_stack/features/transfer_money/domain/models/transaction_details_response.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transfer_details_bloc/transaction_details_state.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transfer_details_bloc/transfer_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';

class TransactionStatusAsset extends StatelessWidget {
  const TransactionStatusAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransferDetailsBloc, TransactionDetailsState>(
      builder: (_, s) {
        if (s is TransactionDetailsLoaded) {
          if (s.response.status == TxnStatusType.completed) {
            return SizedBox(
              width: 200,
              height: 200,
              child:
                  Theme.of(context).brightness == Brightness.light
                      ? RiveAnimation.asset(AppAssets.successRive)
                      : RiveAnimation.asset(AppAssets.successRive),

              // RiveAnimation.asset(AppAssets.successRive),
            );
          } else if (s.response.status == TxnStatusType.failed) {
            SizedBox(
              width: 200,
              height: 200,
              child:
                  Theme.of(context).brightness == Brightness.light
                      ? RiveAnimation.asset(AppAssets.failedLightRive)
                      : RiveAnimation.asset(AppAssets.failedLightRive),

              // RiveAnimation.asset(AppAssets.successRive),
            );
          }
        }
        return SizedBox(
          width: 200,
          height: 200,
          child:
              Theme.of(context).brightness == Brightness.light
                  ? RiveAnimation.asset(AppAssets.pendingRiveLight)
                  : RiveAnimation.asset(AppAssets.pendingRive),

          // RiveAnimation.asset(AppAssets.successRive),
        );
      },
    );
  }
}
