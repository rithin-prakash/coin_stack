import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/card/domain/models/payment_option.dart';
import 'package:coin_stack/features/card/domain/repos/card_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CardRepo)
class CardRepoRestApiImpl implements CardRepo {
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
