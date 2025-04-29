import 'package:coin_stack/core/utls/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_personal_info_state.freezed.dart';

@freezed
class UpdatePersonalInfoState with _$UpdatePersonalInfoState {
  const factory UpdatePersonalInfoState.initial() = UpdatePersonalInfoInitial;
  const factory UpdatePersonalInfoState.loading() = UpdatePersonalInfoLoading;
  const factory UpdatePersonalInfoState.failure(Failure failure) =
      UpdatePersonalInfoFailure;
  const factory UpdatePersonalInfoState.success() = UpdatePersonalInfoSuccess;
}
