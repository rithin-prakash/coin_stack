import 'package:coin_stack/features/transaction_history/domain/models/transaction_category.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/selected_txn_cat_bloc/selected_txn_cat_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_date_selection_bloc/txn_date_selection_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_list_by_category_bloc/txn_list_by_category_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_list_by_category_bloc/txn_list_by_category_state.dart';
import 'package:coin_stack/features/transaction_history/presentation/widgets/txn_history_by_category_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryWiseHistoryList extends StatefulWidget {
  const CategoryWiseHistoryList({super.key});

  @override
  State<CategoryWiseHistoryList> createState() =>
      _CategoryWiseHistoryListState();
}

class _CategoryWiseHistoryListState extends State<CategoryWiseHistoryList> {
  @override
  void initState() {
    super.initState();
    context.read<TxnListByCategoryBloc>().loadList(
      context.read<SelectedTxnCatBloc>().state,
      context.read<TxnDateSelectionBloc>().state,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedTxnCatBloc, TransactionCategory>(
      builder: (_, s) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 18),
            switch (s) {
              TransactionCategory.spending => Text(
                'Spending List',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TransactionCategory.income => Text(
                'Income List',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TransactionCategory.bills => Text(
                'Bills List',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TransactionCategory.saving => Text(
                'Saving List',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            },
            BlocBuilder<TxnListByCategoryBloc, TxnListByCategoryState>(
              builder: (_, s) {
                if (s is TxnListByCategoryLoading) {
                  return TxnHistoryByCategoryShimmer();
                } else if (s is TxnListByCategoryFailed) {
                  return TextButton(
                    child: Text(s.failure.message),
                    onPressed: () {
                      final state = context.read<SelectedTxnCatBloc>().state;
                      context.read<TxnListByCategoryBloc>().loadList(
                        state,
                        context.read<TxnDateSelectionBloc>().state,
                      );
                    },
                  );
                } else if (s is TxnListByCategoryLoaded) {
                  if (s.list.isEmpty) {
                    return Text("Empty");
                  }
                  return ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: s.list.length,
                    separatorBuilder: (context, index) {
                      return Divider(color: Colors.grey.shade400);
                    },
                    itemBuilder: (_, i) {
                      final x = s.list[i];
                      return ListTile(
                        titleTextStyle: Theme.of(context).textTheme.titleMedium,
                        contentPadding: EdgeInsets.zero,
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(x.url),
                        ),
                        title: Text(x.title),
                        subtitle: Text(x.completedTime.toIso8601String()),
                        trailing: Text(
                          "-\$${x.amount}",
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium?.copyWith(color: Colors.red),
                        ),
                      );
                    },
                  );
                }
                return Container();
              },
            ),
          ],
        );
      },
    );
  }
}
