import 'package:coin_stack/features/transfer_money/domain/models/connected_profile.dart';
import 'package:coin_stack/features/transfer_money/domain/models/payment_option.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/payment_option_bloc/payment_option_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_money_request.freezed.dart';
part 'request_money_request.g.dart';

@freezed
abstract class RequestMoneyRequest with _$RequestMoneyRequest {
  const factory RequestMoneyRequest({
    required ConnectedProfile requestReceivingTo,
    required double amount,
    required PaymentOption payOption,
    required PuroseOfTransfer purposeOfTransfer,
  }) = _RequestMoneyRequest;

  factory RequestMoneyRequest.fromJson(Map<String, dynamic> json) =>
      _$RequestMoneyRequestFromJson(json);
}
