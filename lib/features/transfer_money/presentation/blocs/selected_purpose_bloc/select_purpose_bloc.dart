import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

enum PuroseOfTransfer { personal, payment }

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
