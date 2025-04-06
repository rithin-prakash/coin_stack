import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/transfer_money/domain/models/connected_profile.dart';
import 'package:coin_stack/features/transfer_money/domain/models/payment_option.dart';
import 'package:dartz/dartz.dart';

abstract interface class TransferRepo {
  Future<Either<Failure, List<ConnectedProfile>>> fetchProfiles();
  Future<Either<Failure, ConnectedProfile>> fetchProfileById(String id);
  Future<Either<Failure, List<PaymentOption>>> fetchPayOptions();
}
