import 'package:coin_stack/features/auth/domain/repos/auth_repo.dart';
import 'package:coin_stack/features/auth/presentation/blocs/auth_bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthBloc extends Cubit<AuthState> {
  final AuthRepo _repo;
  AuthBloc(this._repo) : super(AuthState.initial());

  isUserLoggedIn() async {
    emit(AuthState.loading());

    final res = await _repo.isUserLoggedIn();
    res.fold(
      (l) => emit(AuthState.failed(l)),
      (r) => emit(AuthState.loaded(r)),
    );
  }
}
