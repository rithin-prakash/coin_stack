import 'package:coin_stack/features/transfer_money/domain/models/connected_profile.dart';
import 'package:coin_stack/features/transfer_money/domain/models/payment_option.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/payment_option_bloc/payment_option_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_money_request.freezed.dart';
part 'send_money_request.g.dart';

@freezed
abstract class SendMoneyRequest with _$SendMoneyRequest {
  const factory SendMoneyRequest({
    required ConnectedProfile receiver,
    required double amount,
    required PaymentOption payOption,
    required PuroseOfTransfer purposeOfTransfer,
  }) = _SendMoneyRequest;

  factory SendMoneyRequest.fromJson(Map<String, dynamic> json) =>
      _$SendMoneyRequestFromJson(json);
}
