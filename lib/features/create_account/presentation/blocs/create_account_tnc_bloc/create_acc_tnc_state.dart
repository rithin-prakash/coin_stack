import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/create_account/domain/models/tnc_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_acc_tnc_state.freezed.dart';

@freezed
abstract class CreateAccTncState with _$CreateAccTncState {
  const factory CreateAccTncState.initial() = CreateAccTncInitial;
  const factory CreateAccTncState.loading() = CreateAccTncLoading;
  const factory CreateAccTncState.loaded(TncResponse tnc) = CreateAccTncLoaded;
  const factory CreateAccTncState.failure(Failure failure) = CreateAccTncFailed;
}
