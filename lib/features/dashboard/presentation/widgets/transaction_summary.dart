import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/dashboard/presentation/widgets/transaction_summery_item.dart';
import 'package:flutter/material.dart';

class TransactionSummary extends StatelessWidget {
  const TransactionSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * (2 / 3),
      padding: const EdgeInsets.symmetric(horizontal: AppDimen.pagePadding),
      margin: EdgeInsets.only(
        top: 50 + 5,
      ), //considering the stack widget size + margin
      // decoration: BoxDecoration(color: Colors.white.withValues(alpha: .92)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Transaction',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(Icons.arrow_forward, size: 30),
                onPressed: () {},
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.only(top: 8, left: 20, right: 20),
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                TransactionSummeryItem(
                  icon: Icons.credit_card,
                  iconColor: Theme.of(context).primaryColor,
                  title: 'Spending',
                  value: '-\$500',
                  amountColor: Colors.red,
                ),
                Divider(color: Colors.grey.shade400),
                TransactionSummeryItem(
                  icon: Icons.wallet,
                  iconColor: Colors.green,
                  title: 'Income',
                  value: '-\$20400',
                  amountColor: Colors.green,
                ),
                Divider(color: Colors.grey.shade400),
                TransactionSummeryItem(
                  icon: Icons.sell,
                  iconColor: Colors.orange,
                  title: 'Bills',
                  value: '-\$800',
                  amountColor: Colors.red,
                ),
                Divider(color: Colors.grey.shade400),
                TransactionSummeryItem(
                  icon: Icons.savings,
                  iconColor: Colors.deepOrange,
                  title: 'Saving',
                  value: '-\$1000',
                  amountColor: Colors.orange,
                ),
                Divider(color: Colors.grey.shade400),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
