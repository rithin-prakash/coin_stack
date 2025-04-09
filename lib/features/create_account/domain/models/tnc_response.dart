import 'package:freezed_annotation/freezed_annotation.dart';

part 'tnc_response.freezed.dart';
part 'tnc_response.g.dart';

@freezed
abstract class TncResponse with _$TncResponse {
  const factory TncResponse({
    required String tncVersion,
    required String tncTitle,
    required String tncHtml,
  }) = _TncResponse;

  factory TncResponse.fromJson(Map<String, dynamic> json) =>
      _$TncResponseFromJson(json);
}
