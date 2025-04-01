import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AccountNotifierBloc extends Cubit<bool> {
  AccountNotifierBloc() : super(false);

  creatingAcc(bool v) {
    emit(v);
  }
}
