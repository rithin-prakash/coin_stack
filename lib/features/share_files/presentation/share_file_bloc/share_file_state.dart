import 'package:coin_stack/core/utls/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'share_file_state.freezed.dart';

@freezed
abstract class ShareFileState with _$ShareFileState {
  const factory ShareFileState.initial() = ShareFileInitial;
  const factory ShareFileState.loading() = ShareFileLoading;
  const factory ShareFileState.done() = ShareFileDone;
  const factory ShareFileState.failure(Failure failure) = ShareFileFailure;
}
