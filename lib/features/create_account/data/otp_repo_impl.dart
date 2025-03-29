import 'package:coin_stack/core/api_config/remote_api.dart';
import 'package:coin_stack/core/api_config/remote_api_dio_impl.dart';
import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/create_account/domain/models/generate_otp_request.dart';
import 'package:coin_stack/features/create_account/domain/repos/otp_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'otp_repo_impl.g.dart';

@Riverpod(keepAlive: true)
OtpRepo otpRepo(Ref ref) => OtpRepoImpl(ref.read(remoteApiProvider));

class OtpRepoImpl implements OtpRepo {
  final RemoteApi remoteApi;

  OtpRepoImpl(this.remoteApi);
  @override
  Future<Either<Failure, Null>> generateOtp(GenerateOtpRequest req) async {
    await Future.delayed(Duration(seconds: 3));
    return Left(ServerFailure(message: 'Server failed'));
  }
}
