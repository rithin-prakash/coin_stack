import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/payment_option_bloc/payment_option_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/selecte_payment_option_bloc/select_payment_option_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transaction_process_type_bloc/transaction_process_type.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transaction_process_type_bloc/transaction_process_type_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/widgets/button_container.dart';
import 'package:coin_stack/features/transfer_money/presentation/widgets/payment_option_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountSelectPayButtonContainer extends StatefulWidget {
  const AccountSelectPayButtonContainer({super.key});

  @override
  State<AccountSelectPayButtonContainer> createState() =>
      _AccountSelectPayButtonContainerState();
}

class _AccountSelectPayButtonContainerState
    extends State<AccountSelectPayButtonContainer> {
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
                if (context.watch<TransactionProcessTypeBloc>().state ==
                    TransactionProcessType.send)
                  PaymentOptionDropdown(),
                SizedBox(height: 20),
                ButtonContainer(),
                SizedBox(height: 20),
              ],
            );
          },
        ),
      ),
    );
  }
}
