import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/core/theme/app_colors.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/dashboard/presentation/widgets/transaction_summery_item.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_by_category_bloc/txn_by_category_bloc.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_by_category_bloc/txn_by_category_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

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
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
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
                BlocProvider(
                  create:
                      (_) =>
                          getIt<TxnByCategoryBloc>()
                            ..loadHistory(TransactionCategory.spending),
                  child: Builder(
                    builder: (context) {
                      var state = context.watch<TxnByCategoryBloc>().state;
                      if (state is TxnByCategoryLoading) {
                        return TxnCategoryLoadingShimmer();
                      } else if (state is TxnByCategoryLoaded) {
                        return TransactionSummeryItem(
                          icon: Icons.credit_card,
                          iconColor: Theme.of(context).primaryColor,
                          title: 'Spending',
                          value: '-\$${state.history.amount}',
                          amountColor: Colors.red,
                        );
                      }
                      return Container();
                    },
                  ),
                ),
                BlocProvider(
                  create:
                      (_) =>
                          getIt<TxnByCategoryBloc>()
                            ..loadHistory(TransactionCategory.income),
                  child: Builder(
                    builder: (context) {
                      var state = context.watch<TxnByCategoryBloc>().state;
                      if (state is TxnByCategoryLoading) {
                        return TxnCategoryLoadingShimmer();
                      } else if (state is TxnByCategoryLoaded) {
                        return TransactionSummeryItem(
                          icon: Icons.wallet,
                          iconColor: Colors.green,
                          title: 'Income',
                          value: '-\$${state.history.amount}',
                          amountColor: Colors.green,
                        );
                      }
                      return Container();
                    },
                  ),
                ),
                BlocProvider(
                  create:
                      (_) =>
                          getIt<TxnByCategoryBloc>()
                            ..loadHistory(TransactionCategory.income),
                  child: Builder(
                    builder: (context) {
                      var state = context.watch<TxnByCategoryBloc>().state;
                      if (state is TxnByCategoryLoading) {
                        return TxnCategoryLoadingShimmer();
                      } else if (state is TxnByCategoryLoaded) {
                        return TransactionSummeryItem(
                          icon: Icons.sell,
                          iconColor: Colors.orange,
                          title: 'Bills',
                          value: '-\$800',
                          amountColor: Colors.red,
                        );
                      }
                      return Container();
                    },
                  ),
                ),
                BlocProvider(
                  create:
                      (_) =>
                          getIt<TxnByCategoryBloc>()
                            ..loadHistory(TransactionCategory.income),
                  child: Builder(
                    builder: (context) {
                      var state = context.watch<TxnByCategoryBloc>().state;
                      if (state is TxnByCategoryLoading) {
                        return TxnCategoryLoadingShimmer();
                      } else if (state is TxnByCategoryLoaded) {
                        return TransactionSummeryItem(
                          icon: Icons.savings,
                          iconColor: Colors.deepOrange,
                          title: 'Saving',
                          value: '-\$1000',
                          amountColor: Colors.orange,
                        );
                      }
                      return Container();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TxnCategoryLoadingShimmer extends StatelessWidget {
  const TxnCategoryLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.simmerBg,
      highlightColor: AppColors.simmerFg,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            SizedBox(width: 5),
            Flexible(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
