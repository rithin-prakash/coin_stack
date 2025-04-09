import 'package:freezed_annotation/freezed_annotation.dart';

part 'privacy_response.freezed.dart';
part 'privacy_response.g.dart';

@freezed
abstract class PrivacyResponse with _$PrivacyResponse {
  const factory PrivacyResponse({
    required String privacyVersion,
    required String privacyTitle,
    required String privacyHtml,
  }) = _PrivacyResponse;

  factory PrivacyResponse.fromJson(Map<String, dynamic> json) =>
      _$PrivacyResponseFromJson(json);
}
