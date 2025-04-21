import 'package:coin_stack/core/utls/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spend_state.freezed.dart';

@freezed
abstract class SpendState with _$SpendState {
  const factory SpendState.initial() = SpendInitial;
  const factory SpendState.loading() = SpendLoading;
  const factory SpendState.loaded(double spend) = SpendLoaded;
  const factory SpendState.failed(Failure failure) = SpendFailed;
}
