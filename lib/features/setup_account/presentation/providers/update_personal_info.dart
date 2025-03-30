import 'package:coin_stack/features/setup_account/data/edit_account_info_repo_rest_api_impl.dart';
import 'package:coin_stack/features/setup_account/domain/models/edit_personal_info_request.dart';
import 'package:coin_stack/features/setup_account/presentation/providers/personal_info_form.dart';
import 'package:coin_stack/features/setup_account/presentation/providers/update_personal_info_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_personal_info.g.dart';

@riverpod
class UpdatePersonalInfo extends _$UpdatePersonalInfo {
  @override
  UpdatePersonalInfoState build() {
    return UpdatePersonalInfoState.initial();
  }

  updateInfo() async {
    state = UpdatePersonalInfoState.loading();
    final fullName =
        ref.read(personalInfoFormProvider).control(upFullName).value;
    final username =
        ref.read(personalInfoFormProvider).control(upUsername).value;
    final dob = ref.read(personalInfoFormProvider).control(upDob).value;

    final res = await ref
        .read(editAccInfoRepoProvider)
        .updatePersonalInfo(
          EditPersonalRequest(dob: dob, fullName: fullName, username: username),
        );

    res.fold(
      (l) => state = UpdatePersonalInfoState.failure(l),
      (r) => state = UpdatePersonalInfoState.success(),
    );
  }
}
