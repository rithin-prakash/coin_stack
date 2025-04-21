import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/transaction_history/domain/models/transaction_item.dart';
import 'package:coin_stack/features/transaction_history/domain/models/txn_history_by_category.dart';
import 'package:coin_stack/features/transaction_history/domain/models/txn_history_by_category_request.dart';
import 'package:coin_stack/features/transaction_history/domain/models/txn_history_category_request.dart';
import 'package:dartz/dartz.dart';

abstract class TxnHistoryRepo {
  Future<Either<Failure, TxnHistoryByCategory>> loadTxnHistory(
    TxnHistoryCategoryRequest request,
  );

  Future<Either<Failure, List<TransactionItem>>> loadTxnHistoryByCategory(
    TxnHistoryByCategoryRequest request,
  );

  Future<Either<Failure, double>> loadBalance();
  Future<Either<Failure, double>> loadSpend();
}
