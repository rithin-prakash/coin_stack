import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/transfer_money/domain/models/connected_profile.dart';
import 'package:coin_stack/features/transfer_money/domain/models/payment_option.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/payment_option_bloc/payment_option_bloc.dart';
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

class AccountSelectPayButtonContainer extends StatefulWidget {
  const AccountSelectPayButtonContainer({super.key});

  @override
  State<AccountSelectPayButtonContainer> createState() =>
      _AccountSelectPayButtonContainerState();
}

class _AccountSelectPayButtonContainerState
    extends State<AccountSelectPayButtonContainer> {
  sendOrReceive(
    ConnectedProfile profile,
    PaymentOption paymentOption,
    String v,
  ) {
    context.read<SendMoneyBloc>().sendMoney(
      profile,
      context.read<SelectPurposeBloc>().state as PuroseOfTransfer,
      paymentOption,
      v,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<PaymentOptionBloc>()..getList()),
        BlocProvider(create: (_) => getIt<SelectPaymentOptionBloc>()),
      ],
      child: Container(
        padding: EdgeInsets.all(AppDimen.pagePadding),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Builder(
          builder: (context) {
            return Column(
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppDimen.pagePadding,
                  ),
                  child: BlocConsumer<PaymentOptionBloc, List<PaymentOption>>(
                    listener: (context, state) {
                      if (state.isNotEmpty) {
                        context.read<SelectPaymentOptionBloc>().select(
                          state.last,
                        );
                      }
                    },
                    builder: (_, state) {
                      final selectedCard =
                          context.watch<SelectPaymentOptionBloc>().state;
                      return DropdownButton<PaymentOption>(
                        value: selectedCard,
                        isExpanded: true,
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        underline: Container(),
                        items:
                            state
                                .map<DropdownMenuItem<PaymentOption>>(
                                  (e) => DropdownMenuItem<PaymentOption>(
                                    value: e,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.money),
                                            SizedBox(width: 6),
                                            Text(e.name),
                                          ],
                                        ),
                                        if (!(e.isActive))
                                          Text(
                                            e.msg,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(color: Colors.red),
                                          ),
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                        onChanged: (v) {
                          if (v == null) return;
                          context.read<SelectPaymentOptionBloc>().select(v);
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Builder(
                    builder: (_) {
                      final txnType =
                          context.watch<TransactionProcessTypeBloc>().state;
                      final profileState =
                          context.watch<SelectProfileBloc>().state;
                      final paymentOption =
                          context.watch<SelectPaymentOptionBloc>().state;
                      return ReactiveFormConsumer(
                        builder: (_, form, _) {
                          final v = form.control(amount).value;
                          return ElevatedButton(
                            onPressed:
                                !form.valid
                                    ? null
                                    : !(paymentOption?.isActive ?? false)
                                    ? null
                                    : profileState is! SelectProfileLoaded
                                    ? null
                                    : () => sendOrReceive(
                                      profileState.profile,
                                      paymentOption!,
                                      v,
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
                ),
                SizedBox(height: 20),
              ],
            );
          },
        ),
      ),
    );
  }
}
