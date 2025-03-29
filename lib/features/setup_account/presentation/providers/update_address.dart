import 'package:coin_stack/features/setup_account/data/edit_account_info_repo_rest_api_impl.dart';
import 'package:coin_stack/features/setup_account/domain/models/edit_address_request.dart';
import 'package:coin_stack/features/setup_account/presentation/providers/address_form.dart';
import 'package:coin_stack/features/setup_account/presentation/providers/update_address_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_address.g.dart';

@riverpod
class UpdateAddress extends _$UpdateAddress {
  @override
  UpdateAddressState build() {
    return UpdateAddressState.initial();
  }

  updateEmail() async {
    state = UpdateAddressState.loading();
    final address = ref.read(addressFormProvider).control(upAddress).value;
    final city = ref.read(addressFormProvider).control(upCity).value;
    final pin = ref.read(addressFormProvider).control(upPin).value;

    final res = await ref
        .read(editAccInfoRepoProvider)
        .updateAddress(
          EditAddressRequest(addressLine1: address, city: city, pin: pin),
        );

    res.fold(
      (l) => state = UpdateAddressState.failure(l),
      (r) => state = UpdateAddressState.success(),
    );
  }
}
