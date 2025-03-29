import 'package:coin_stack/features/setup_account/data/edit_account_info_repo_rest_api_impl.dart';
import 'package:coin_stack/features/setup_account/domain/models/edit_email_request.dart';
import 'package:coin_stack/features/setup_account/presentation/providers/email_form.dart';
import 'package:coin_stack/features/setup_account/presentation/providers/update_email_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_email.g.dart';

@riverpod
class UpdateEmail extends _$UpdateEmail {
  @override
  UpdateEmailState build() {
    return UpdateEmailState.initial();
  }

  updateEmail() async {
    state = UpdateEmailState.loading();
    final email = ref.read(emailFormProvider).control(upEmail).value;
    final res = await ref
        .read(editAccInfoRepoProvider)
        .updateEmail(EditEmailRequest(email: email));

    res.fold(
      (l) => state = UpdateEmailState.failure(l),
      (r) => state = UpdateEmailState.success(),
    );
  }
}
