import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/transfer_money/domain/models/send_money_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_money_state.freezed.dart';

@freezed
abstract class SendMoneyState with _$SendMoneyState {
  const factory SendMoneyState.initial() = SendMoneyInitial;
  const factory SendMoneyState.loading() = SendMoneyLoading;
  const factory SendMoneyState.loaded(SendMoneyResponse response) =
      SendMoneyLoaded;
  const factory SendMoneyState.failure(Failure failure) = SendMoneyFailed;
}
