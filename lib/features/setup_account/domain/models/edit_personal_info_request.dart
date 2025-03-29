import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_personal_info_request.freezed.dart';
part 'edit_personal_info_request.g.dart';

@freezed
abstract class EditPersonalRequest with _$EditPersonalRequest {
  factory EditPersonalRequest({
    required String fullName,
    required String username,
    required String dob,
  }) = _EditPersonalRequest;

  factory EditPersonalRequest.fromJson(Map<String, dynamic> json) =>
      _$EditPersonalRequestFromJson(json);
}
