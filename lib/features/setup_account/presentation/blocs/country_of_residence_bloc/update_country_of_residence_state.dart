import 'package:coin_stack/core/utls/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_country_of_residence_state.freezed.dart';

@freezed
class UpdateCountryOfResidenceState with _$UpdateCountryOfResidenceState {
  const factory UpdateCountryOfResidenceState.initial() =
      UpdateCountryOfResidenceInitial;
  const factory UpdateCountryOfResidenceState.loading() =
      UpdateCountryOfResidenceLoading;
  const factory UpdateCountryOfResidenceState.failure(Failure failure) =
      UpdateCountryOfResidenceFailure;
  const factory UpdateCountryOfResidenceState.success() =
      UpdateCountryOfResidenceSuccess;
}
