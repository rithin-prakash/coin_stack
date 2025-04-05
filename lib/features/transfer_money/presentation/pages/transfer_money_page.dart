import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/transfer_money/presentation/widgets/account_select_pay_button_container.dart';
import 'package:coin_stack/features/transfer_money/presentation/widgets/transfer_amount_container.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TransferMoneyPage extends StatelessWidget {
  const TransferMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Colors.grey.shade100),
      backgroundColor: Colors.grey.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDimen.pagePadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Send money",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
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
      ),
    );
  }
}
