import 'package:coin_stack/features/card/domain/models/payment_option.dart';
import 'package:coin_stack/features/transfer_money/domain/models/connected_profile.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/payment_option_bloc/payment_option_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/request_money_bloc/request_money_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/select_profile_bloc/select_profile_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/select_profile_bloc/select_profile_state.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/selecte_payment_option_bloc/select_payment_option_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/selected_purpose_bloc/select_purpose_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/send_money_bloc/send_money_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transaction_process_type_bloc/transaction_process_type.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transaction_process_type_bloc/transaction_process_type_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transfer_form_bloc/transfer_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({super.key});

  sendOrReceive(
    BuildContext context,
    ConnectedProfile profile,
    PaymentOption? paymentOption,
    String v,
    bool isSending,
  ) {
    if (isSending) {
      context.read<SendMoneyBloc>().sendMoney(
        profile,
        context.read<SelectPurposeBloc>().state as PuroseOfTransfer,
        paymentOption!,
        v,
      );
    } else {
      context.read<RequestMoneyBloc>().requestMoney(
        profile,
        context.read<SelectPurposeBloc>().state as PuroseOfTransfer,
        wallet,
        v,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Builder(
        builder: (_) {
          final isSending =
              context.watch<TransactionProcessTypeBloc>().state ==
              TransactionProcessType.send;
          final txnType = context.watch<TransactionProcessTypeBloc>().state;
          final profileState = context.watch<SelectProfileBloc>().state;
          final paymentOption = context.watch<SelectPaymentOptionBloc>().state;
          return ReactiveFormConsumer(
            builder: (_, form, _) {
              final v = form.control(amount).value;
              return ElevatedButton(
                onPressed:
                    !form.valid
                        ? null
                        : isSending && !(paymentOption?.isActive ?? false)
                        ? null
                        : profileState is! SelectProfileLoaded
                        ? null
                        : () => sendOrReceive(
                          context,
                          profileState.profile,
                          paymentOption,
                          v,
                          isSending,
                        ),
                child:
                    txnType == TransactionProcessType.send
                        ? Text('Send $v')
                        : Text('Request $v'),
              );
            },
          );
        },
      ),
    );
  }
}
