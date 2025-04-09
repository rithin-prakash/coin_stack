import 'package:coin_stack/features/transfer_money/domain/models/connected_profile.dart';
import 'package:coin_stack/features/transfer_money/domain/models/send_money_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_details_response.freezed.dart';
part 'transaction_details_response.g.dart';

enum TxnStatusType {
  initiated,
  processing,
  completed,
  failed,
  refunding,
  refunded;

  factory TxnStatusType.fromString(String v) {
    return TxnStatusType.values.firstWhere(
      (e) => e.name.toLowerCase() == v.toLowerCase(),
    );
  }

  named() => name.toUpperCase();
}

@freezed
abstract class TransactionDetailsResponse with _$TransactionDetailsResponse {
  const factory TransactionDetailsResponse({
    required String id,
    @DateTimeConverter() required DateTime? completedTime,
    @DateTimeConverter() required DateTime initiatedTime,
    @TxnStatusTypeConverter() required TxnStatusType status,
    required ConnectedProfile sendProfile,
    required ConnectedProfile receiveProfile,
  }) = _TransactionDetailsResponse;

  factory TransactionDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailsResponseFromJson(json);
}

class TxnStatusTypeConverter implements JsonConverter<TxnStatusType, String> {
  const TxnStatusTypeConverter();

  @override
  TxnStatusType fromJson(String json) => TxnStatusType.fromString(json);

  @override
  String toJson(TxnStatusType object) => object.name.toLowerCase();
}
