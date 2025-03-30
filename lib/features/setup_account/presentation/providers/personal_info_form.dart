import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'personal_info_form.g.dart';

const String upFullName = 'full_name';
const String upUsername = 'username';
const String upDob = 'dob';

@Riverpod(keepAlive: true)
FormGroup personalInfoForm(ref) {
  final form = fb.group({
    upFullName: FormControl<String>(validators: [Validators.required]),
    upUsername: FormControl<String>(validators: [Validators.required]),
    upDob: FormControl<DateTime>(validators: [Validators.required]),
  });

  return form;
}
