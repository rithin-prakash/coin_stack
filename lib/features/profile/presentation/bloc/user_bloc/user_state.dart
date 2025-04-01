import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/profile/domain/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';

@freezed
abstract class UserState with _$UserState {
 const factory UserState.initial() = UserInitial();
 const factory UserState.loading() = UserLoading();
 const factory UserState.loaded(User u) = UserLoaded();
 const factory UserState.failure(Failure f) = UserFailed();
}
