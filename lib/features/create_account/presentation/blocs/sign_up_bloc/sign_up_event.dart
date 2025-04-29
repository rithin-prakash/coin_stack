import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.freezed.dart';

@freezed
abstract class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.generateOtp({
    required String phoneCode,
    required String phone,
  }) = SignUpGenerateOtp;
  const factory SignUpEvent.verifyOtp({
    required String otp,
    required String phoneCode,
    required String phone,
  }) = SignUpVerifyOtp;
}
