import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/create_account/domain/models/generate_otp_request.dart';
import 'package:dartz/dartz.dart';

abstract interface class OtpRepo {
  Future<Either<Failure, Null>> generateOtp(GenerateOtpRequest req);
}
