import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/setup_account/domain/models/country.dart';
import 'package:coin_stack/features/setup_account/domain/models/edit_address_request.dart';
import 'package:coin_stack/features/setup_account/domain/models/edit_email_request.dart';
import 'package:coin_stack/features/setup_account/domain/models/edit_personal_info_request.dart';
import 'package:dartz/dartz.dart';

abstract interface class EditAccInfoRepo {
  Future<Either<Failure, Null>> updateEmail(EditEmailRequest req);
  Future<Either<Failure, Null>> updateAddress(EditAddressRequest req);
  Future<Either<Failure, Null>> updatePersonalInfo(EditPersonalRequest req);
  Future<Either<Failure, List<Country>>> countriesList();
  Future<Either<Failure, Null>> updateCountryOfResidence(Country req);
}
