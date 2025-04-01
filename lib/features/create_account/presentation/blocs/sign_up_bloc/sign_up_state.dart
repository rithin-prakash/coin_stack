import 'package:coin_stack/core/utls/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = SignUpInitial;
  const factory SignUpState.generateOtpLoading() = SignUpGenerateOtpLoading;
  const factory SignUpState.generateOtpLoaded(String? otp) =
      SignUpGenerateOtpLoaded;
  const factory SignUpState.generateOtpFailure(Failure failure) =
      SignUpGenerateOtpFailure;
  const factory SignUpState.verifyOtpLoading() = SignUpVerifyOtpLoading;
  const factory SignUpState.verifyOtpLoaded() = SignUpVerifyOtpLoaded;
  const factory SignUpState.verifyOtpFailure(Failure failure) =
      SignUpVerifyOtpFailure;
}
