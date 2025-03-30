import 'package:coin_stack/features/setup_account/presentation/providers/country_of_residence_form.dart';
import 'package:coin_stack/features/setup_account/presentation/providers/update_country_of_residence_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:coin_stack/features/setup_account/data/edit_account_info_repo_rest_api_impl.dart';

part 'update_country_of_residence.g.dart';

@riverpod
class UpdateCountryOfResidence extends _$UpdateCountryOfResidence {
  @override
  UpdateCountryOfResidenceState build() {
    return UpdateCountryOfResidenceState.initial();
  }

  updateResidentCountry() async {
    state = UpdateCountryOfResidenceState.loading();
    final country =
        ref
            .read(countryOfResidenceFormProvider)
            .control(upCountryOfResidence)
            .value;

    final res = await ref
        .read(editAccInfoRepoProvider)
        .updateCountryOfResidence(country);

    res.fold(
      (l) => state = UpdateCountryOfResidenceState.failure(l),
      (r) => state = UpdateCountryOfResidenceState.success(),
    );
  }
}
