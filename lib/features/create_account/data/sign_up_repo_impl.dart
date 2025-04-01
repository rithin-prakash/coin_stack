import 'package:coin_stack/core/api_config/remote_api.dart';
import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/create_account/domain/models/generate_otp_request.dart';
import 'package:coin_stack/features/create_account/domain/models/verify_otp_request.dart';
import 'package:coin_stack/features/create_account/domain/repos/sign_up_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignUpRepo)
class SignUpRepoImpl implements SignUpRepo {
  final RemoteApi remoteApi;

  SignUpRepoImpl(this.remoteApi);

  @override
  Future<Either<Failure, String?>> generateOtp(GenerateOtpRequest req) async {
    await Future.delayed(Duration(seconds: 3));
    return Right("123456");
  }

  @override
  Future<Either<Failure, Null>> verifyOtp(VerifyOtpRequest req) async {
    await Future.delayed(Duration(seconds: 3));
    return Right(null);
  }
}
