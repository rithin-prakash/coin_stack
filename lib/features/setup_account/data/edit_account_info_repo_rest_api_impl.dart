import 'package:coin_stack/core/api_config/remote_api.dart';
import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/setup_account/domain/models/country.dart';
import 'package:coin_stack/features/setup_account/domain/models/edit_address_request.dart';
import 'package:coin_stack/features/setup_account/domain/models/edit_email_request.dart';
import 'package:coin_stack/features/setup_account/domain/models/edit_personal_info_request.dart';
import 'package:coin_stack/features/setup_account/domain/repos/edit_acc_info_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: EditAccInfoRepo)
class EditAccountInfoRepoRestApiImpl implements EditAccInfoRepo {
  final RemoteApi _remoteApi;

  EditAccountInfoRepoRestApiImpl(this._remoteApi);
  @override
  Future<Either<Failure, Null>> updateEmail(EditEmailRequest req) async {
    await Future.delayed(Duration(seconds: 1));
    return Right(null);
  }

  @override
  Future<Either<Failure, Null>> updateAddress(EditAddressRequest req) async {
    await Future.delayed(Duration(seconds: 1));
    return Right(null);
  }

  @override
  Future<Either<Failure, Null>> updatePersonalInfo(
    EditPersonalRequest req,
  ) async {
    await Future.delayed(Duration(seconds: 1));
    return Right(null);
  }

  @override
  Future<Either<Failure, List<Country>>> countriesList() async {
    await Future.delayed(Duration(seconds: 1));

    var d = [
      {'name': 'India', 'iso2': 'IN', 'iso3': 'IND'},
      {'name': 'Pakistan', 'iso2': 'PK', 'iso3': 'PKN'},
    ];
    return Right(List<Country>.from(d.map((e) => Country.fromJson(e))));
  }

  @override
  Future<Either<Failure, Null>> updateCountryOfResidence(Country req) async {
    await Future.delayed(Duration(seconds: 1));
    return Right(null);
  }

  @override
  Future<Either<Failure, Null>> createPasscode(String code) async {
    await Future.delayed(Duration(seconds: 1));
    return Right(null);
  }
}
