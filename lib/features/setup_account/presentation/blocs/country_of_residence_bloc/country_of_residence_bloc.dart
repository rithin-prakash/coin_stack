import 'package:coin_stack/features/setup_account/domain/models/country.dart';
import 'package:coin_stack/features/setup_account/domain/repos/edit_acc_info_repo.dart';
import 'package:coin_stack/features/setup_account/presentation/blocs/country_of_residence_bloc/update_country_of_residence_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

const upCountryOfResidence = 'country_of_residence';

@injectable
class CountryOfResidenceBloc extends Cubit<UpdateCountryOfResidenceState> {
  late final FormGroup form;
  final EditAccInfoRepo _repo;

  CountryOfResidenceBloc(this._repo)
    : super(UpdateCountryOfResidenceState.initial()) {
    form = fb.group({
      upCountryOfResidence: FormControl<Country>(
        validators: [Validators.required],
      ),
    });
  }

  updateResidentCountry() async {
    emit(UpdateCountryOfResidenceState.loading());
    final country = form.control(upCountryOfResidence).value;

    final res = await _repo.updateCountryOfResidence(country);

    res.fold(
      (l) => emit(UpdateCountryOfResidenceState.failure(l)),
      (r) => emit(UpdateCountryOfResidenceState.success()),
    );
  }
}
