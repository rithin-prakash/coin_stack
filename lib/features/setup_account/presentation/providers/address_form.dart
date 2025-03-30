import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'address_form.g.dart';

const upAddress = 'address_line';
const upCity = 'city';
const upPin = 'pin';

@Riverpod(keepAlive: true)
FormGroup addressForm(ref) {
  final form = fb.group({
    upAddress: FormControl<String>(validators: [Validators.required]),
    upCity: FormControl<String>(validators: [Validators.required]),
    upPin: FormControl<String>(
      validators: [
        Validators.required,
        Validators.minLength(6),
        Validators.maxLength(6),
      ],
    ),
  });

  return form;
}
