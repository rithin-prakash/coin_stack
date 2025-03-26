import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/core/utls/no_params.dart';
import 'package:coin_stack/core/utls/usecase.dart';
import 'package:coin_stack/features/splash/data/splash_repo_impl.dart';
import 'package:dartz/dartz.dart';

class IsFirstTimeOpening implements Usecase<bool, NoParams> {
  final SplashRepoImpl _repoImpl;

  IsFirstTimeOpening(this._repoImpl);

  @override
  Future<Either<Failure, bool>> call() async {
    return Right(true);
  }
}
