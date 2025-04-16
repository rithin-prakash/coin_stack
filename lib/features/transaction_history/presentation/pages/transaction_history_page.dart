import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/transaction_history/domain/models/transaction_category.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/selected_txn_cat_bloc/selected_txn_cat_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_date_selection_bloc/txn_date_selection_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_list_by_category_bloc/txn_list_by_category_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/widgets/calander_selector.dart';
import 'package:coin_stack/features/transaction_history/presentation/widgets/category_wise_history_list.dart';
import 'package:coin_stack/features/transaction_history/presentation/widgets/main_summary_container.dart';
import 'package:coin_stack/features/transaction_history/presentation/widgets/transaction_categories_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TransactionHistoryPage extends StatelessWidget {
  const TransactionHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TxnDateSelectionBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: BlocConsumer<SelectedTxnCatBloc, TransactionCategory>(
            listener: (context, state) {
              context.read<TxnListByCategoryBloc>().loadList(
                state,
                context.read<TxnDateSelectionBloc>().state,
              );
            },
            builder: (_, s) {
              switch (s) {
                case TransactionCategory.spending:
                  return Text('Spending');
                case TransactionCategory.income:
                  return Text('Income');
                case TransactionCategory.bills:
                  return Text('Bills');
                case TransactionCategory.saving:
                  return Text('Savings');
              }
            },
          ),
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
      ),
    );
  }
}
