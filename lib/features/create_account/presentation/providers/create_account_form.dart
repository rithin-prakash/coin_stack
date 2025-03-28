import 'package:coin_stack/core/utls/validation_helper.dart';
import 'package:coin_stack/core/validation/password_validation_cr.dart';
import 'package:coin_stack/core/validation/phone_validation_cr.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_account_form.g.dart';

const String caPhone = 'create_account_phone';
const String caPhoneCode = 'create_account_phone_code';
const String caPassword = 'create_account_password';

var phone = PhoneValidationCr();
var password = PasswordValidationCr();

@Riverpod(keepAlive: true)
FormGroup createAccForm(Ref ref) {
  return fb.group({
    caPassword: FormControl<String>(validators: generateValidations(password)),
    caPhone: FormControl<String>(validators: generateValidations(phone)),
    caPhoneCode: FormControl<CountryCode>(
      value: CountryCode(code: '+91'),
      validators: [Validators.required],
    ),
  });
}
