import 'package:coin_stack/core/utls/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_card_state.freezed.dart';

@freezed
abstract class AddCardState with _$AddCardState {
  const factory AddCardState.initial() = AddCardInitial;
  const factory AddCardState.loading() = AddCardLoading;
  const factory AddCardState.loaded() = AddCardLoaded;
  const factory AddCardState.failure(Failure failure) = AddCardFailed;
}
