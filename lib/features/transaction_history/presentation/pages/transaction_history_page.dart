import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/transaction_history/presentation/widgets/calander_selector.dart';
import 'package:coin_stack/features/transaction_history/presentation/widgets/category_wise_history_list.dart';
import 'package:coin_stack/features/transaction_history/presentation/widgets/main_summary_container.dart';
import 'package:coin_stack/features/transaction_history/presentation/widgets/transaction_categories_container.dart';
import 'package:flutter/material.dart';

class TransactionHistoryPage extends StatelessWidget {
  const TransactionHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    debugDumpRenderTree();
    return Scaffold(
      appBar: AppBar(
        title: Text('Spending'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimen.pagePadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CalanderSelector(),
            Flexible(
              fit: FlexFit.loose,
              child: ListView(
                shrinkWrap: true,
                children: [
                  MainSummaryContainer(),
                  TransactionCategoriesContainer(),
                  CategoryWiseHistoryList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
