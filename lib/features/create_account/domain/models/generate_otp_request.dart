import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_otp_request.freezed.dart';
part 'generate_otp_request.g.dart';

@freezed
abstract class GenerateOtpRequest with _$GenerateOtpRequest {
  factory GenerateOtpRequest({
    required String phoneCode,
    required String phone,
    required String password,
  }) = _GenerateOtpRequest;

  factory GenerateOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$GenerateOtpRequestFromJson(json);
}
