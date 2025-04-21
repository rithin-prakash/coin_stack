import 'package:coin_stack/core/utls/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'balance_state.freezed.dart';

@freezed
abstract class BalanceState with _$BalanceState {
  const factory BalanceState.initial() = BalanceInitial;
  const factory BalanceState.loading() = BalanceLoading;
  const factory BalanceState.loaded(double balance) = BalanceLoaded;
  const factory BalanceState.failed(Failure failure) = BalanceFailed;
}
