import 'package:coin_stack/features/create_account/domain/repos/sign_up_repo.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/create_account_tnc_bloc/create_acc_tnc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateAccountTncBloc extends Cubit<CreateAccTncState> {
  final SignUpRepo _repo;

  CreateAccountTncBloc(this._repo) : super(CreateAccTncState.initial());

  loadTnc() async {
    emit(CreateAccTncState.loading());

    final res = await _repo.loadTnc();

    res.fold(
      (l) => emit(CreateAccTncState.failure(l)),
      (r) => emit(CreateAccTncState.loaded(r)),
    );
  }
}
