import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/card/domain/models/payment_option.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/payment_option_bloc/payment_option_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/selecte_payment_option_bloc/select_payment_option_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentOptionDropdown extends StatelessWidget {
  const PaymentOptionDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDimen.pagePadding),
      child: BlocConsumer<PaymentOptionBloc, List<PaymentOption>>(
        listener: (context, state) {
          if (state.isNotEmpty) {
            context.read<SelectPaymentOptionBloc>().select(state.last);
          }
        },
        builder: (_, state) {
          final selectedCard = context.watch<SelectPaymentOptionBloc>().state;
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.money),
                                SizedBox(width: 6),
                                Text(e.name),
                              ],
                            ),
                            if (!(e.isActive))
                              Text(
                                e.msg,
                                style: Theme.of(context).textTheme.bodyMedium
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
    );
  }
}
