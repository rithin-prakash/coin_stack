import 'package:coin_stack/core/utls/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_address_state.freezed.dart';

@freezed
class UpdateAddressState with _$UpdateAddressState {
  const factory UpdateAddressState.initial() = UpdateAddressInitial;
  const factory UpdateAddressState.loading() = UpdateAddressLoading;
  const factory UpdateAddressState.failure(Failure failure) =
      UpdateAddressFailure;
  const factory UpdateAddressState.success() = UpdateAddressSuccess;
}
