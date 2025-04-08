import 'package:coin_stack/features/transfer_money/domain/models/connected_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'send_money_response.freezed.dart';
part 'send_money_response.g.dart';

enum TxnSendStatusType {
  initiated,
  processing,
  completed,
  failed,
  refunding,
  refunded;

  factory TxnSendStatusType.fromString(String v) {
    return TxnSendStatusType.values.firstWhere(
      (e) => e.name.toLowerCase() == v.toLowerCase(),
    );
  }
}

@freezed
abstract class SendMoneyResponse with _$SendMoneyResponse {
  const factory SendMoneyResponse({
    required String id,
    @DateTimeConverter() required DateTime? completedTime,
    @DateTimeConverter() required DateTime initiatedTime,
    @TxnSendStatusTypeConverter() required TxnSendStatusType status,
    required ConnectedProfile sendProfile,
    required ConnectedProfile receiveProfile,
  }) = _SendMoneyResponse;

  factory SendMoneyResponse.fromJson(Map<String, dynamic> json) =>
      _$SendMoneyResponseFromJson(json);
}

class TxnSendStatusTypeConverter
    implements JsonConverter<TxnSendStatusType, String> {
  const TxnSendStatusTypeConverter();

  @override
  TxnSendStatusType fromJson(String json) => TxnSendStatusType.fromString(json);

  @override
  String toJson(TxnSendStatusType object) => object.name.toLowerCase();
}

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) =>
      DateFormat('yyyy-MM-dd hh:mm:ss').parse(json);

  @override
  String toJson(DateTime object) => object.toIso8601String();
}
