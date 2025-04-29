import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_address_request.freezed.dart';
part 'edit_address_request.g.dart';

@freezed
abstract class EditAddressRequest with _$EditAddressRequest {
  factory EditAddressRequest({
    required String addressLine1,
    required String city,
    required String pin,
  }) = _EditAddressRequest;

  factory EditAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$EditAddressRequestFromJson(json);
}
