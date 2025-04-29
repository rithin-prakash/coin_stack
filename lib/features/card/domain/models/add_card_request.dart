import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_card_request.freezed.dart';
part 'add_card_request.g.dart';

@freezed
abstract class AddCardRequest with _$AddCardRequest {
  const factory AddCardRequest({
    required String cardNumber,
    required String expYear,
    required String expMonth,
    required String cvv,
    required String fullname,
    required String email,
  }) = _AddCardRequest;

  factory AddCardRequest.fromJson(Map<String, dynamic> json) =>
      _$AddCardRequestFromJson(json);
}
