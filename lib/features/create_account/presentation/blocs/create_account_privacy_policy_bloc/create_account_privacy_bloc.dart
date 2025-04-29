import 'package:coin_stack/features/create_account/domain/repos/sign_up_repo.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/create_account_privacy_policy_bloc/create_acc_privacy_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateAccountPrivacyBloc extends Cubit<CreateAccPrivacyState> {
  final SignUpRepo _repo;

  CreateAccountPrivacyBloc(this._repo) : super(CreateAccPrivacyState.initial());

  loadPrivacy() async {
    emit(CreateAccPrivacyState.loading());

    final res = await _repo.loadPrivacy();

    res.fold(
      (l) => emit(CreateAccPrivacyState.failure(l)),
      (r) => emit(CreateAccPrivacyState.loaded(r)),
    );
  }
}
