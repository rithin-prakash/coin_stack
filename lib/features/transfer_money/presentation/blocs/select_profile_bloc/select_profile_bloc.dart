import 'package:coin_stack/features/transfer_money/domain/models/connected_profile.dart';
import 'package:coin_stack/features/transfer_money/domain/repos/transfer_repo.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/select_profile_bloc/select_profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SelectProfileBloc extends Cubit<SelectProfileState> {
  final TransferRepo _repo;

  SelectProfileBloc(this._repo) : super(SelectProfileState.initial());

  select(ConnectedProfile? profile, String? id) async {
    if (profile != null) {
      emit(SelectProfileState.loaded(profile));
    } else {
      emit(SelectProfileState.loading());

      final res = await _repo.fetchProfileById(id!);

      res.fold(
        (l) => SelectProfileState.failure(l),
        (r) => emit(SelectProfileState.loaded(r)),
      );
    }
  }

  deselectProfile() {
    emit(SelectProfileState.initial());
  }
}
