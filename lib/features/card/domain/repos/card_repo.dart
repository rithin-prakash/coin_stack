import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/card/domain/models/add_card_request.dart';
import 'package:coin_stack/features/card/domain/models/payment_option.dart';
import 'package:dartz/dartz.dart';

abstract class CardRepo {
  Future<Either<Failure, List<PaymentOption>>> fetchPayOptions();
  Future<Either<Failure, Null>> addCard(AddCardRequest cardRequest);
}
