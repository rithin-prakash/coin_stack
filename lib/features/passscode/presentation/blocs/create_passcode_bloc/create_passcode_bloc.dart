import 'package:coin_stack/features/passscode/presentation/blocs/create_passcode_bloc/create_passcode_state.dart';
import 'package:coin_stack/features/setup_account/domain/repos/edit_acc_info_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreatePasscodeBloc extends Cubit<CreatePasscodeState> {
  final EditAccInfoRepo _editAccInfoRepo;

  CreatePasscodeBloc(this._editAccInfoRepo)
    : super(CreatePasscodeState.initial());

  savePasscode(String passcode) async {
    emit(CreatePasscodeState.loading());

    final res = await _editAccInfoRepo.createPasscode(passcode);

    res.fold(
      (l) => emit(CreatePasscodeState.failed(l)),
      (r) => emit(CreatePasscodeState.loaded()),
    );
  }
}
