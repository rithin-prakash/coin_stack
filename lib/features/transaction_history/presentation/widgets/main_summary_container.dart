import 'package:coin_stack/features/transaction_history/presentation/widgets/main_summary_item.dart';
import 'package:flutter/material.dart';

class MainSummaryContainer extends StatelessWidget {
  const MainSummaryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MainSummaryItem(
          bgColor: Theme.of(context).primaryColor,
          amount: '\$20000',
          icon: Icon(Icons.credit_card, color: Colors.white70),
          title: 'Total Spend',
          textColor: Colors.white,
        ),
        SizedBox(width: 10),
        MainSummaryItem(
          bgColor: Colors.yellow.shade600,
          amount: '\$450000',
          icon: Icon(Icons.credit_score, color: Colors.black87),
          title: 'Balance',
          textColor: Colors.black,
        ),
      ],
    );
  }
}
