import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/transfer_money/domain/models/connected_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_profile_state.freezed.dart';

@freezed
abstract class SelectProfileState with _$SelectProfileState {
  const factory SelectProfileState.initial() = SelectProfileInitial;
  const factory SelectProfileState.loading() = SelectProfileLoading;
  const factory SelectProfileState.loaded(ConnectedProfile profile) =
      SelectProfileLoaded;
  const factory SelectProfileState.failure(Failure failure) =
      SelectProfileFailed;
}
