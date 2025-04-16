import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/transaction_history/domain/models/transaction_category.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/selected_txn_cat_bloc/selected_txn_cat_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/widgets/transaction_catergory_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      child: BlocBuilder<SelectedTxnCatBloc, TransactionCategory>(
        builder: (_, s) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            spacing: 12,
            children: [
              TransactionCatergoryItem(
                icon: Icons.credit_card,
                iconColor: Theme.of(context).primaryColor,
                title: 'Spending',
                isActive: s == TransactionCategory.spending,
                onTap: () {
                  context.read<SelectedTxnCatBloc>().changeCategory(
                    TransactionCategory.spending,
                  );
                },
              ),
              TransactionCatergoryItem(
                icon: Icons.wallet,
                iconColor: Colors.green,
                title: 'Income',
                isActive: s == TransactionCategory.income,
                onTap: () {
                  context.read<SelectedTxnCatBloc>().changeCategory(
                    TransactionCategory.income,
                  );
                },
              ),
              TransactionCatergoryItem(
                icon: Icons.sell,
                iconColor: Colors.orange,
                title: 'Bills',
                isActive: s == TransactionCategory.bills,
                onTap: () {
                  context.read<SelectedTxnCatBloc>().changeCategory(
                    TransactionCategory.bills,
                  );
                },
              ),
              TransactionCatergoryItem(
                icon: Icons.credit_card,
                iconColor: Colors.deepOrange,
                title: 'Savings',
                isActive: s == TransactionCategory.saving,
                onTap: () {
                  context.read<SelectedTxnCatBloc>().changeCategory(
                    TransactionCategory.saving,
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
