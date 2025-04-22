import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_option.freezed.dart';
part 'payment_option.g.dart';

enum PaymentOptionType {
  wallet,
  visa,
  msatercard,
  rupay;

  factory PaymentOptionType.fromString(String v) {
    return PaymentOptionType.values.firstWhere(
      (e) => e.name.toLowerCase() == v.toLowerCase(),
      orElse: () => PaymentOptionType.wallet,
    );
  }
}

@freezed
abstract class PaymentOption with _$PaymentOption {
  const factory PaymentOption({
    required String id,
    required String name,
    @PaymentOptionTypeConverter() required PaymentOptionType optionType,
    required bool isActive,
    required String msg,
  }) = _PaymentOption;

  factory PaymentOption.fromJson(Map<String, dynamic> json) =>
      _$PaymentOptionFromJson(json);
}

class PaymentOptionTypeConverter
    implements JsonConverter<PaymentOptionType, String> {
  const PaymentOptionTypeConverter();

  @override
  PaymentOptionType fromJson(String json) => PaymentOptionType.fromString(json);

  @override
  String toJson(PaymentOptionType object) => object.name.toLowerCase();
}
