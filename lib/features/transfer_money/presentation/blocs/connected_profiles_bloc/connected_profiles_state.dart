import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/transfer_money/domain/models/connected_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connected_profiles_state.freezed.dart';

@freezed
abstract class ConnectedProfilesState with _$ConnectedProfilesState {
  const factory ConnectedProfilesState.initial() = ConnectedProfilesInitial;
  const factory ConnectedProfilesState.loading() = ConnectedProfilesLoading;
  const factory ConnectedProfilesState.loaded(List<ConnectedProfile> list) =
      ConnectedProfilesLoaded;
  const factory ConnectedProfilesState.failed(Failure failure) =
      ConnectedProfilesFailed;
}
