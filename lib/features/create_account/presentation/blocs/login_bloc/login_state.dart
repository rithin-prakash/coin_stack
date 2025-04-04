import 'package:coin_stack/core/utls/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginInitial;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.loaded() = LoginLoaded;
  const factory LoginState.failed(Failure failure) = LoginFailed;
}
