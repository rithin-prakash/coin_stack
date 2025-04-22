import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/transfer_money/domain/models/connected_profile.dart';
import 'package:coin_stack/features/transfer_money/domain/models/request_money_request.dart';
import 'package:coin_stack/features/transfer_money/domain/models/request_money_response.dart';
import 'package:coin_stack/features/transfer_money/domain/models/send_money_request.dart';
import 'package:coin_stack/features/transfer_money/domain/models/send_money_response.dart';
import 'package:coin_stack/features/transfer_money/domain/models/transaction_details_request.dart';
import 'package:coin_stack/features/transfer_money/domain/models/transaction_details_response.dart';
import 'package:coin_stack/features/transfer_money/domain/repos/transfer_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TransferRepo)
class TransferRepoRestApiImpl implements TransferRepo {
  @override
  Future<Either<Failure, List<ConnectedProfile>>> fetchProfiles() async {
    await Future.delayed(Duration(seconds: 4));
    final r = [
      {
        "name": "John Honai",
        "phone": "+(121012)12121",
        "id": "123113423",
        "email": "sjfbiwr@sdjs.sdsdd",
        "profileUrl": "",
      },
    ];

    return Right(
      List<ConnectedProfile>.from(r.map((e) => ConnectedProfile.fromJson(e))),
    );
  }

  @override
  Future<Either<Failure, ConnectedProfile>> fetchProfileById(String id) async {
    await Future.delayed(Duration(seconds: 4));
    final r = {
      "name": "Bob Marley Honai",
      "phone": "+9134312121",
      "id": "123113423",
      "email": "sjfbiwr@sdjs.sdsdd",
      "profileUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Bob_Marley_1976_press_photo.jpg/500px-Bob_Marley_1976_press_photo.jpg",
    };

    return Right(ConnectedProfile.fromJson(r));
  }

  @override
  Future<Either<Failure, SendMoneyResponse>> sendMoney(
    SendMoneyRequest req,
  ) async {
    await Future.delayed(Duration(seconds: 4));
    final r = {
      "id": "",
      "initiatedTime": "2025-04-11 10:23:43",
      "completedTime": "2025-04-11 10:24:12",
      "sendProfile": {
        "name": "John Honai",
        "phone": "+(121012)12121",
        "id": "123113423",
        "email": "sjfbiwr@sdjs.sdsdd",
        "profileUrl": "",
      },
      "receiveProfile": {
        "name": "John Honai",
        "phone": "+(121012)12121",
        "id": "123113423",
        "email": "sjfbiwr@sdjs.sdsdd",
        "profileUrl": "",
      },
      "status": "completed",
    };

    return Right(SendMoneyResponse.fromJson(r));
  }

  @override
  Future<Either<Failure, TransactionDetailsResponse>> transactionDetails(
    TransactionDetailsRequest req,
  ) async {
    await Future.delayed(Duration(seconds: 4));
    final r = {
      "id": "",
      "initiatedTime": "2025-04-11 10:23:43 pm",
      "completedTime": "2025-04-11 10:24:12 pm",
      "sendProfile": {
        "name": "John Honai",
        "phone": "+(121012)12121",
        "id": "123113423",
        "email": "sjfbiwr@sdjs.sdsdd",
        "profileUrl": "",
      },
      "receiveProfile": {
        "name": "John Honai",
        "phone": "+(121012)12121",
        "id": "123113423",
        "email": "sjfbiwr@sdjs.sdsdd",
        "profileUrl": "",
      },
      "status": "processing",
    };

    return Right(TransactionDetailsResponse.fromJson(r));
    // return Left(ServerFailure(message: 'adcdasc'));
  }

  @override
  Future<Either<Failure, RequestMoneyResponse>> requestMoney(
    RequestMoneyRequest req,
  ) async {
    await Future.delayed(Duration(seconds: 4));
    final r = {
      "id": "",
      "initiatedTime": "2025-04-11 10:23:43 pm",
      "requestRecievedTo": {
        "name": "John Honai",
        "phone": "+(121012)12121",
        "id": "123113423",
        "email": "sjfbiwr@sdjs.sdsdd",
        "profileUrl": "",
      },
      "status": "initiated",
    };

    return Right(RequestMoneyResponse.fromJson(r));
  }
}
