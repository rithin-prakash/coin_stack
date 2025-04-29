import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/transfer_money/domain/models/transaction_details_response.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transfer_details_bloc/transaction_details_state.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transfer_details_bloc/transfer_details_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/widgets/label_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TranasctionDetails extends StatelessWidget {
  const TranasctionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransferDetailsBloc, TransactionDetailsState>(
      builder: (_, state) {
        if (state is TransactionDetailsLoaded) {
          return Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppDimen.containerBorderRadius,
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                LabelValue(label: "Transaction ID", value: state.response.id),
                LabelValue(
                  label: "Transfered To",
                  value: state.response.receiveProfile.name,
                ),
                LabelValue(
                  label: "Receiver ID",
                  value: state.response.receiveProfile.id,
                ),
                LabelValue(
                  label: "Transaction Status",
                  value: state.response.status.named(),
                ),
                LabelValue(
                  label: "Initiated Date",
                  value: state.response.initiatedDateOnly,
                ),
                LabelValue(
                  label: "Initiated Time",
                  value: state.response.initiatedTimeOnly,
                ),
                if (state.response.status == TxnStatusType.completed)
                  LabelValue(
                    label: "Completed Date",
                    value: state.response.completedDateOnly,
                  ),
                if (state.response.status == TxnStatusType.completed)
                  LabelValue(
                    label: "Completed Time",
                    value: state.response.completedTimeOnly,
                  ),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
