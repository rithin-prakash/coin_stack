import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/transfer_money/domain/models/request_money_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_money_state.freezed.dart';

@freezed
abstract class RequestMoneyState with _$RequestMoneyState {
  const factory RequestMoneyState.initial() = RequestMoneyInitial;
  const factory RequestMoneyState.loading() = RequestMoneyLoading;
  const factory RequestMoneyState.loaded(RequestMoneyResponse response) =
      RequestMoneyLoaded;
  const factory RequestMoneyState.failure(Failure failure) = RequestMoneyFailed;
}
