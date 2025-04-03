import 'package:coin_stack/core/utls/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_passcode_state.freezed.dart';

@freezed
abstract class CreatePasscodeState with _$CreatePasscodeState {
  const factory CreatePasscodeState.initial() = CreatePasscodeInitial;
  const factory CreatePasscodeState.loading() = CreatePasscodeLoading;
  const factory CreatePasscodeState.loaded() = CreatePasscodeLoaded;
  const factory CreatePasscodeState.failed(Failure failure) =
      CreatePasscodeFailed;
}
