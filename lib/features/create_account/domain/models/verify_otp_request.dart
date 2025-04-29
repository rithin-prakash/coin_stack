import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_request.freezed.dart';
part 'verify_otp_request.g.dart';

@freezed
abstract class VerifyOtpRequest with _$VerifyOtpRequest {
  factory VerifyOtpRequest({
    required String otp,
    required String phoneCode,
    required String phone,
  }) = _VerifyOtpRequest;

  factory VerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpRequestFromJson(json);
}
