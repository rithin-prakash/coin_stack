import 'package:coin_stack/core/utls/validation_helper.dart';
import 'package:coin_stack/core/validation/password_validation_cr.dart';
import 'package:coin_stack/core/validation/phone_validation_cr.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

const String caPhone = 'create_account_phone';
const String caPhoneCode = 'create_account_phone_code';
const String caPassword = 'create_account_password';

@injectable
class SignupFormBloc extends Cubit<FormGroup?> {
  late final FormGroup form;
  var phoneVal = PhoneValidationCr();
  var passwordVal = PasswordValidationCr();

  SignupFormBloc() : super(null) {
    form = fb.group({
      caPassword: FormControl<String>(
        validators: generateValidations(passwordVal),
      ),
      caPhone: FormControl<String>(validators: generateValidations(phoneVal)),
      caPhoneCode: FormControl<CountryCode>(
        value: CountryCode(code: '+91', dialCode: '+91'),
        validators: [Validators.required],
      ),
    });

    emit(form);
  }

  String get phoneValue => form.control(caPhone).value;
  String get phoneCode =>
      (form.control(caPhoneCode).value as CountryCode).dialCode!;
  String get password => form.control(caPassword).value;
}
