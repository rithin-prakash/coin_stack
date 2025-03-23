import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/transaction_history/presentation/widgets/transaction_catergory_item.dart';
import 'package:flutter/material.dart';

class TransactionCategoriesContainer extends StatelessWidget {
  const TransactionCategoriesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimen.containerBorderRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        spacing: 12,
        children: [
          TransactionCatergoryItem(
            icon: Icons.credit_card,
            iconColor: Theme.of(context).primaryColor,
            title: 'Spending',
          ),
          TransactionCatergoryItem(
            icon: Icons.wallet,
            iconColor: Colors.green,
            title: 'Income',
          ),
          TransactionCatergoryItem(
            icon: Icons.sell,
            iconColor: Colors.orange,
            title: 'Bills',
          ),
          TransactionCatergoryItem(
            icon: Icons.credit_card,
            iconColor: Colors.deepOrange,
            title: 'Savings',
          ),
        ],
      ),
    );
  }
}
