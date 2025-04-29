import 'package:coin_stack/features/transfer_money/domain/models/connected_profile.dart';
import 'package:coin_stack/features/transfer_money/domain/models/send_money_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_money_response.freezed.dart';
part 'request_money_response.g.dart';

@freezed
abstract class RequestMoneyResponse with _$RequestMoneyResponse {
  const factory RequestMoneyResponse({
    required String id,
    @DateTimeConverter() required DateTime initiatedTime,
    @TxnSendStatusTypeConverter() required TxnSendStatusType status,
    required ConnectedProfile requestRecievedTo,
  }) = _RequestMoneyResponse;

  factory RequestMoneyResponse.fromJson(Map<String, dynamic> json) =>
      _$RequestMoneyResponseFromJson(json);
}
