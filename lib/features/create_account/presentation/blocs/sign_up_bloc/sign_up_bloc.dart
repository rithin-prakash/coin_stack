import 'package:coin_stack/core/utls/validation_helper.dart';
import 'package:coin_stack/core/validation/password_validation_cr.dart';
import 'package:coin_stack/core/validation/phone_validation_cr.dart';
import 'package:coin_stack/features/create_account/domain/models/generate_otp_request.dart';
import 'package:coin_stack/features/create_account/domain/models/verify_otp_request.dart';
import 'package:coin_stack/features/create_account/domain/repos/sign_up_repo.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/sign_up_bloc/sign_up_event.dart';
import 'package:coin_stack/features/create_account/presentation/blocs/sign_up_bloc/sign_up_state.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

const String caPhone = 'create_account_phone';
const String caPhoneCode = 'create_account_phone_code';
const String caPassword = 'create_account_password';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  late final FormGroup form;
  var phone = PhoneValidationCr();
  var password = PasswordValidationCr();

  final SignUpRepo _signUpRepo;

  SignUpBloc(this._signUpRepo) : super(SignUpInitial()) {
    form = fb.group({
      caPassword: FormControl<String>(
        validators: generateValidations(password),
      ),
      caPhone: FormControl<String>(validators: generateValidations(phone)),
      caPhoneCode: FormControl<CountryCode>(
        value: CountryCode(code: '+91', dialCode: '+91'),
        validators: [Validators.required],
      ),
    });

    on<SignUpGenerateOtp>(generateOtp);
    on<SignUpVerifyOtp>(verifyOtp);
  }

  String get phoneValue => form.control(caPhone).value;
  String get phoneCode =>
      (form.control(caPhoneCode).value as CountryCode).dialCode!;

  generateOtp(event, emit) async {
    final password = form.control(caPassword).value;

    var param = GenerateOtpRequest(
      password: password,
      phone: phoneValue,
      phoneCode: phoneCode,
    );

    final res = await _signUpRepo.generateOtp(param);

    res.fold(
      (l) => emit(SignUpGenerateOtpFailure(l)),
      (r) => emit(SignUpGenerateOtpLoaded(r)),
    );
  }

  verifyOtp(SignUpVerifyOtp event, emit) async {
    final code = form.control(caPhoneCode).value as CountryCode;
    final phone = form.control(caPhone).value;

    final param = VerifyOtpRequest(
      otp: event.otp,
      phoneCode: code.code!,
      phone: phone,
    );

    final res = await _signUpRepo.verifyOtp(param);

    res.fold(
      (l) => emit(SignUpVerifyOtpFailure(l)),
      (r) => emit(SignUpVerifyOtpLoaded()),
    );
  }
}
