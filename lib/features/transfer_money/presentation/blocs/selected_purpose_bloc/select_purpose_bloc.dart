import 'package:coin_stack/features/transfer_money/presentation/blocs/payment_option_bloc/payment_option_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SelectPurposeBloc extends Cubit<PuroseOfTransfer?> {
  SelectPurposeBloc() : super(null);

  select(PuroseOfTransfer purpose) async {
    emit(purpose);
  }

  deselectPurpose() {
    emit(null);
  }
}
