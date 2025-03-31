import 'package:coin_stack/features/splash/domain/repos/splash_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class FirstOpeningCubit extends Cubit<bool> {
  final SplashRepo _splashRepo;

  FirstOpeningCubit(this._splashRepo) : super(true);

  getValue() async {
    final res = await _splashRepo.isOpeningFirstTime();

    final rx = res.fold((_) => true, (r) => r);
    emit(rx);
  }
}
