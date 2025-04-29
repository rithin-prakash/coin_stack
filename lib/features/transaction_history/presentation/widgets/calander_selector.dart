import 'package:coin_stack/features/transaction_history/presentation/blocs/selected_txn_cat_bloc/selected_txn_cat_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/spend_bloc/spend_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_date_selection_bloc/txn_date_selection_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_history_graph_bloc/txn_history_graph_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_list_by_category_bloc/txn_list_by_category_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:month_year_picker/month_year_picker.dart';

class CalanderSelector extends StatelessWidget {
  const CalanderSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<TxnDateSelectionBloc, DateTime>(
      listener: (context, state) {
        context.read<TxnListByCategoryBloc>().loadList(
          context.read<SelectedTxnCatBloc>().state,
          state,
        );

        context.read<SpendBloc>().loadSpend(state);
        context.read<TxnHistoryGraphBloc>().loadHistoryGraph(
          context.read<SelectedTxnCatBloc>().state,
          state,
        );
      },
      child: InkWell(
        onTap: () async {
          final selected = await showMonthYearPicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2019),
            lastDate: DateTime.now(),
          );

          if (selected != null && context.mounted) {
            context.read<TxnDateSelectionBloc>().changeDate(selected);
          }
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(context.watch<TxnDateSelectionBloc>().dateYear),
              SizedBox(width: 4),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ),
      ),
    );
  }
}
