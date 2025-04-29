import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_email_request.freezed.dart';
part 'edit_email_request.g.dart';

@freezed
abstract class EditEmailRequest with _$EditEmailRequest {
  factory EditEmailRequest({required String email}) = _EditEmailRequest;

  factory EditEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$EditEmailRequestFromJson(json);
}
