import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'email_form.g.dart';

const upEmail = 'email';
@Riverpod(keepAlive: true)
FormGroup emailForm(ref) {
  final form = fb.group({
    upEmail: FormControl<String>(
      validators: [Validators.required, Validators.email],
    ),
  });

  return form;
}
