import 'package:coin_stack/features/create_account/data/otp_repo_impl.dart';
import 'package:coin_stack/features/create_account/domain/models/generate_otp_request.dart';
import 'package:coin_stack/features/create_account/presentation/providers/create_account_form.dart';
import 'package:coin_stack/features/create_account/presentation/providers/generate_otp_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:country_code_picker/country_code_picker.dart';

part 'generate_otp.g.dart';

@Riverpod(keepAlive: true)
class GenerateOtp extends _$GenerateOtp {
  GenerateOtp();

  @override
  GenerateOtpState build() => GenerateOtpState.initial();

  generateOtp() async {
    state = GenerateOtpState.loading();
    final form = ref.read(createAccFormProvider);

    final code = form.control(caPhoneCode).value as CountryCode;
    final phone = form.control(caPhone).value;
    final password = form.control(caPassword).value;

    final res = await ref
        .read(otpRepoProvider)
        .generateOtp(
          GenerateOtpRequest(
            password: password,
            phone: phone,
            phoneCode: code.code!,
          ),
        );

    res.fold(
      (l) => state = GenerateOtpState.failure(l),
      (r) => state = GenerateOtpState.success(r),
    );
  }
}
