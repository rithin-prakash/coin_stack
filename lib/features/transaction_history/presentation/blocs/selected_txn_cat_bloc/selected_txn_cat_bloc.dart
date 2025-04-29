import 'package:coin_stack/features/transaction_history/domain/models/transaction_category.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SelectedTxnCatBloc extends Cubit<TransactionCategory> {
  SelectedTxnCatBloc() : super(TransactionCategory.spending);

  changeCategory(TransactionCategory cat) {
    emit(cat);
  }
}
