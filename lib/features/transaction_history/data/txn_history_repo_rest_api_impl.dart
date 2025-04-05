import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/transaction_history/domain/models/txn_history_by_category.dart';
import 'package:coin_stack/features/transaction_history/domain/models/txn_history_category_request.dart';
import 'package:coin_stack/features/transaction_history/domain/repos/txn_history_repo.dart';
import 'package:coin_stack/features/transaction_history/presentation/blocs/txn_by_category_bloc/txn_by_category_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TxnHistoryRepo)
class TxnHistoryRepoResApiImpl implements TxnHistoryRepo {
  @override
  Future<Either<Failure, TxnHistoryByCategory>> loadTxnHistory(
    TxnHistoryCategoryRequest request,
  ) async {
    if (request.category == TransactionCategory.spending) {
      await Future.delayed(Duration(seconds: 2));
      return Right(TxnHistoryByCategory(amount: 100, cateId: '1'));
    }
    await Future.delayed(Duration(seconds: 4));
    return Right(TxnHistoryByCategory(amount: 912, cateId: '2'));
  }
}
