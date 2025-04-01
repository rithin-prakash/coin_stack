import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/create_account/domain/models/generate_otp_request.dart';
import 'package:coin_stack/features/create_account/domain/models/verify_otp_request.dart';
import 'package:dartz/dartz.dart';

abstract interface class SignUpRepo {
  Future<Either<Failure, String?>> generateOtp(GenerateOtpRequest req);
  Future<Either<Failure, Null>> verifyOtp(VerifyOtpRequest req);
}
