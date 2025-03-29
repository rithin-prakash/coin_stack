import 'package:coin_stack/core/utls/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_otp_state.freezed.dart';

@freezed
class GenerateOtpState with _$GenerateOtpState {
  const factory GenerateOtpState.initial() = GenerateOtpStateInitial;
  const factory GenerateOtpState.loading() = GenerateOtpLoading;
  const factory GenerateOtpState.failure(Failure failure) = GenerateOtpFailure;
  const factory GenerateOtpState.success() = GenerateOtpSuccess;
}
