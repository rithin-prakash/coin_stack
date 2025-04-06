import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/transfer_money/domain/models/connected_profile.dart';
import 'package:coin_stack/features/transfer_money/domain/models/payment_option.dart';
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
  Future<Either<Failure, List<PaymentOption>>> fetchPayOptions() async {
    await Future.delayed(Duration(seconds: 4));
    final r = [
      {
        "name": "*******7878",
        "id": "123113423",
        "optionType": "visa",
        "isActive": true,
        "msg": "",
      },
      {
        "name": "*********7390",
        "id": "332323",
        "optionType": "mastercard",
        "isActive": false,
        "msg": "card expired",
      },
    ];

    return Right(
      List<PaymentOption>.from(r.map((e) => PaymentOption.fromJson(e))),
    );
  }
}
