import 'package:coin_stack/core/utls/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_state.freezed.dart';

@freezed
class VerifyOtpState with _$VerifyOtpState {
  const factory VerifyOtpState.initial() = VerifyOtpInitial;
  const factory VerifyOtpState.loading() = VerifyOtpLoading;
  const factory VerifyOtpState.failure(Failure failure) = VerifyOtpFailure;
  const factory VerifyOtpState.success() = VerifyOtpSuccess;
}
