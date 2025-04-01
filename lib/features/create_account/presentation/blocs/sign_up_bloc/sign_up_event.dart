import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.freezed.dart';

@freezed
abstract class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.generateOtp() = SignUpGenerateOtp;
  const factory SignUpEvent.verifyOtp(String otp) = SignUpVerifyOtp;
}
