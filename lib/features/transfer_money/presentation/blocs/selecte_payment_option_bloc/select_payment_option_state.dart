import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/transfer_money/domain/models/payment_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_payment_option_state.freezed.dart';

@freezed
abstract class SelectPaymentOptionState with _$SelectPaymentOptionState {
  const factory SelectPaymentOptionState.initial() =
      SelectPaymentOptionStateInitial;
  const factory SelectPaymentOptionState.loading() =
      SelectPaymentOptionStateLoading;
  const factory SelectPaymentOptionState.loaded(PaymentOption profile) =
      SelectPaymentOptionStateLoaded;
  const factory SelectPaymentOptionState.failure(Failure failure) =
      SelectPaymentOptionStateFailed;
}
