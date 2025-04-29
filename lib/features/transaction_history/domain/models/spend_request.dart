import 'package:coin_stack/features/transfer_money/domain/models/send_money_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spend_request.freezed.dart';
part 'spend_request.g.dart';

@freezed
abstract class SpendRequest with _$SpendRequest {
  const factory SpendRequest({@DateTimeConverter() required DateTime date}) =
      _SPendRequest;

  factory SpendRequest.fromJson(Map<String, dynamic> json) =>
      _$SpendRequestFromJson(json);
}
