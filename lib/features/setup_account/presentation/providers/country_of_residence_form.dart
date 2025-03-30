import 'package:coin_stack/features/setup_account/domain/models/country.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'country_of_residence_form.g.dart';

const upCountryOfResidence = 'country_of_residence';

@Riverpod(keepAlive: true)
FormGroup countryOfResidenceForm(ref) {
  final form = fb.group({
    upCountryOfResidence: FormControl<Country>(
      validators: [Validators.required],
    ),
  });

  return form;
}
