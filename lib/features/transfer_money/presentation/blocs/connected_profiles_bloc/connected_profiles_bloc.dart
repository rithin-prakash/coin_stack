import 'package:coin_stack/features/transfer_money/domain/repos/transfer_repo.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/connected_profiles_bloc/connected_profiles_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ConnectedProfilesBloc extends Cubit<ConnectedProfilesState> {
  final TransferRepo _repo;

  ConnectedProfilesBloc(this._repo) : super(ConnectedProfilesState.initial());

  getList() async {
    emit(ConnectedProfilesState.loading());

    final res = await _repo.fetchProfiles();

    res.fold(
      (l) => ConnectedProfilesState.failed(l),
      (r) => emit(ConnectedProfilesState.loaded(r)),
    );
  }
}
