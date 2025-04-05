import 'package:coin_stack/features/transfer_money/presentation/blocs/transaction_process_type_bloc/transaction_process_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class TransactionProcessTypeBloc extends Cubit<TransactionProcessType> {
  TransactionProcessTypeBloc() : super(TransactionProcessType.send);

  changeType(TransactionProcessType type) {
    emit(type);
  }
}
