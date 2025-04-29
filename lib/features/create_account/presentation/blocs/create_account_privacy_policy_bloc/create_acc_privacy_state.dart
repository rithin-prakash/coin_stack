import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/create_account/domain/models/privacy_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_acc_privacy_state.freezed.dart';

@freezed
abstract class CreateAccPrivacyState with _$CreateAccPrivacyState {
  const factory CreateAccPrivacyState.initial() = CreateAccPrivacyInitial;
  const factory CreateAccPrivacyState.loading() = CreateAccPrivacyLoading;
  const factory CreateAccPrivacyState.loaded(PrivacyResponse privacy) =
      CreateAccPrivacyLoaded;
  const factory CreateAccPrivacyState.failure(Failure failure) =
      CreateAccPrivacyFailed;
}
