import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/transfer_money/domain/models/transaction_details_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_details_state.freezed.dart';

@freezed
abstract class TransactionDetailsState with _$TransactionDetailsState {
  const factory TransactionDetailsState.initial() = TransactionDetailsInitial;
  const factory TransactionDetailsState.loading() = TransactionDetailsLoading;
  const factory TransactionDetailsState.loaded(
    TransactionDetailsResponse response,
  ) = TransactionDetailsLoaded;
  const factory TransactionDetailsState.failed(Failure failure) =
      TransactionDetailsFailed;
}
