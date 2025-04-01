import 'package:coin_stack/features/profile/domain/repos/user_profile_repo.dart';
import 'package:coin_stack/features/profile/presentation/bloc/user_bloc/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserCubit extends Cubit {
  final UserProfileRepo _profileRepo;
  UserCubit(this._profileRepo) : super(UserState.initial());

  loadUser() async {
    emit(UserState.loading());
    final res = await _profileRepo.fetchUserProfile();

    res.fold(
      (l) => emit(UserState.failure(l)),
      (r) => emit(UserState.loaded(r)),
    );
  }
}
