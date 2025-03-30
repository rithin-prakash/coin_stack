import 'package:coin_stack/features/create_account/data/otp_repo_impl.dart';
import 'package:coin_stack/features/create_account/domain/models/verify_otp_request.dart';
import 'package:coin_stack/features/create_account/presentation/providers/create_account_form.dart';
import 'package:coin_stack/features/create_account/presentation/providers/verify_otp_state.dart';
import 'package:coin_stack/features/profile/presentation/providers/user_profile.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'verify_otp.g.dart';

@riverpod
class VerifyOtp extends _$VerifyOtp {
  VerifyOtp();

  @override
  VerifyOtpState build() => VerifyOtpState.initial();

  verifyOtp(String otp) async {
    state = VerifyOtpState.loading();
    final form = ref.read(createAccFormProvider);

    final code = form.control(caPhoneCode).value as CountryCode;
    final phone = form.control(caPhone).value;

    final res = await ref
        .read(otpRepoProvider)
        .verifyOtp(
          VerifyOtpRequest(otp: otp, phoneCode: code.code!, phone: phone),
        );
    res.fold((l) => state = VerifyOtpState.failure(l), (r) {
      ref.read(userProfileProvider);
      state = VerifyOtpState.success();
    });
  }
}
