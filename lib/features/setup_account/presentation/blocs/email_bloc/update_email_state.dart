import 'package:coin_stack/core/utls/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_email_state.freezed.dart';

@freezed
class UpdateEmailState with _$UpdateEmailState {
  const factory UpdateEmailState.initial() = UpdateEmailInitial;
  const factory UpdateEmailState.loading() = UpdateEmailLoading;
  const factory UpdateEmailState.failure(Failure failure) = UpdateEmailFailure;
  const factory UpdateEmailState.success() = UpdateEmailSuccess;
}
