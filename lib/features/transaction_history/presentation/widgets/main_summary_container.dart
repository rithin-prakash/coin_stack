import 'package:coin_stack/features/transaction_history/presentation/blocs/balance_bloc/balance_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/balance_bloc/balance_state.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/spend_bloc/spend_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/spend_bloc/spend_state.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_date_selection_bloc/txn_date_selection_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/widgets/main_summary_item.dart';
import 'package:coin_stack/features/transaction_history/presentation/widgets/main_summary_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainSummaryContainer extends StatefulWidget {
  const MainSummaryContainer({super.key});

  @override
  State<MainSummaryContainer> createState() => _MainSummaryContainerState();
}

class _MainSummaryContainerState extends State<MainSummaryContainer> {
  @override
  void initState() {
    super.initState();

    context.read<BalanceBloc>().loadBalance();
    final date = context.read<TxnDateSelectionBloc>().state;
    context.read<SpendBloc>().loadSpend(date);
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Row(
          children: [
            BlocBuilder<SpendBloc, SpendState>(
              builder: (_, s) {
                if (s is SpendLoading) {
                  return MainSummaryShimmer();
                } else if (s is SpendLoaded) {
                  return MainSummaryItem(
                    bgColor: Theme.of(context).primaryColor,
                    amount: '\$${s.spend}',
                    icon: Icon(Icons.credit_card, color: Colors.white70),
                    title: 'Total Spend',
                    textColor: Colors.white,
                  );
                } else if (s is SpendFailed) {
                  return TextButton(
                    onPressed: () {
                      final date = context.watch<TxnDateSelectionBloc>().state;
                      context.read<SpendBloc>().loadSpend(date);
                    },
                    child: Text(s.failure.message),
                  );
                }
                return Container();
              },
            ),
            SizedBox(width: 10),
            BlocBuilder<BalanceBloc, BalanceState>(
              builder: (_, s) {
                // return MainSummaryShimmer();
                if (s is BalanceLoading) {
                  return MainSummaryShimmer();
                } else if (s is BalanceLoaded) {
                  return MainSummaryItem(
                    bgColor: Colors.yellow.shade600,
                    amount: '\$${s.balance}',
                    icon: Icon(Icons.credit_score, color: Colors.black87),
                    title: 'Balance',
                    textColor: Colors.black,
                  );
                } else if (s is BalanceFailed) {
                  return TextButton(
                    onPressed: () {
                      context.read<BalanceBloc>().loadBalance();
                    },
                    child: Text(s.failure.message),
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
