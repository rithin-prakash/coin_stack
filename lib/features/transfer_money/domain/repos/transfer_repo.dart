import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/transfer_money/domain/models/connected_profile.dart';
import 'package:coin_stack/features/transfer_money/domain/models/request_money_request.dart';
import 'package:coin_stack/features/transfer_money/domain/models/request_money_response.dart';
import 'package:coin_stack/features/transfer_money/domain/models/send_money_request.dart';
import 'package:coin_stack/features/transfer_money/domain/models/send_money_response.dart';
import 'package:coin_stack/features/transfer_money/domain/models/transaction_details_request.dart';
import 'package:coin_stack/features/transfer_money/domain/models/transaction_details_response.dart';
import 'package:dartz/dartz.dart';

abstract interface class TransferRepo {
  Future<Either<Failure, List<ConnectedProfile>>> fetchProfiles();
  Future<Either<Failure, ConnectedProfile>> fetchProfileById(String id);
  Future<Either<Failure, SendMoneyResponse>> sendMoney(SendMoneyRequest req);
  Future<Either<Failure, TransactionDetailsResponse>> transactionDetails(
    TransactionDetailsRequest req,
  );
  Future<Either<Failure, RequestMoneyResponse>> requestMoney(
    RequestMoneyRequest req,
  );
}
