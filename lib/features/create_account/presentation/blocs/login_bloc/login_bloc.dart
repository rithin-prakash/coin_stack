import 'package:coin_stack/features/create_account/domain/models/login_request.dart';
import 'package:coin_stack/features/create_account/domain/repos/sign_up_repo.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/login_bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginBloc extends Cubit<LoginState> {
  final SignUpRepo _repo;
  LoginBloc(this._repo) : super(LoginState.initial());

  login(String code, String phone, String password) async {
    emit(LoginState.loading());

    final res = await _repo.login(
      LoginRequest(phone: phone, phoneCode: code, password: password),
    );

    res.fold(
      (l) => emit(LoginState.failed(l)),
      (r) => emit(LoginState.loaded()),
    );
  }
}
