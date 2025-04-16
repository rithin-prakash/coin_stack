import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@injectable
class TxnDateSelectionBloc extends Cubit<DateTime> {
  TxnDateSelectionBloc() : super(DateTime.now());

  changeDate(DateTime dateTime) {
    emit(dateTime);
  }

  String get dateYear => DateFormat.yMMM().format(state);
}
