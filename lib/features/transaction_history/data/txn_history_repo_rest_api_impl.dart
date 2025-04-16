import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/transaction_history/domain/models/transaction_category.dart';
import 'package:coin_stack/features/transaction_history/domain/models/transaction_item.dart';
import 'package:coin_stack/features/transaction_history/domain/models/txn_history_by_category.dart';
import 'package:coin_stack/features/transaction_history/domain/models/txn_history_by_category_request.dart';
import 'package:coin_stack/features/transaction_history/domain/models/txn_history_category_request.dart';
import 'package:coin_stack/features/transaction_history/domain/repos/txn_history_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TxnHistoryRepo)
class TxnHistoryRepoRestApiImpl implements TxnHistoryRepo {
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

  @override
  Future<Either<Failure, List<TransactionItem>>> loadTxnHistoryByCategory(
    TxnHistoryByCategoryRequest request,
  ) async {
    await Future.delayed(Duration(seconds: 3));

    final r = [
      {
        "id": 1,
        "title": "Netflix",
        "completedTime": "2025-12-21 11:24:41",
        "amount": 133,
        "category": 1,
        "url":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Netflix_icon.svg/407px-Netflix_icon.svg.png",
      },
      {
        "id": 2,
        "title": "Amazon prime",
        "completedTime": "2025-02-30 03:55:10",
        "amount": 900,
        "category": 1,
        "url":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Amazon_Prime_logo_%282024%29.svg/512px-Amazon_Prime_logo_%282024%29.svg.png",
      },
      {
        "id": 3,
        "title": "Netflix",
        "completedTime": "2025-06-01 08:45:10",
        "amount": 20.2,
        "category": 1,
        "url":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Netflix_icon.svg/407px-Netflix_icon.svg.png",
      },
    ];

    return Right(
      List<TransactionItem>.from(r.map((e) => TransactionItem.fromJson(e))),
    );
  }
}
