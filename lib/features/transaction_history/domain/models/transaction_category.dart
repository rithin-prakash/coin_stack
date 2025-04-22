import 'package:freezed_annotation/freezed_annotation.dart';

enum TransactionCategory {
  spending,
  income,
  bills,
  saving;

  factory TransactionCategory.fromInt(int v) {
    return switch (v) {
      2 => TransactionCategory.income,
      3 => TransactionCategory.bills,
      4 => TransactionCategory.saving,
      _ => TransactionCategory.spending, //1
    };
  }

  int toInt() {
    return switch (this) {
      TransactionCategory.income => 2,
      TransactionCategory.bills => 3,
      TransactionCategory.saving => 4,
      TransactionCategory.spending => 1,
    };
  }
}

class TxnCategoryConverter implements JsonConverter<TransactionCategory, int> {
  const TxnCategoryConverter();

  @override
  TransactionCategory fromJson(int json) => TransactionCategory.fromInt(json);

  @override
  int toJson(TransactionCategory object) => object.toInt();
}
