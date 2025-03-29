import 'package:coin_stack/core/api_config/remote_api.dart';
import 'package:coin_stack/core/api_config/remote_api_dio_impl.dart';
import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/setup_account/domain/models/edit_address_request.dart';
import 'package:coin_stack/features/setup_account/domain/models/edit_email_request.dart';
import 'package:coin_stack/features/setup_account/domain/repos/edit_acc_info_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_account_info_repo_rest_api_impl.g.dart';

@Riverpod(keepAlive: true)
EditAccInfoRepo editAccInfoRepo(Ref ref) =>
    EditAccountInfoRepoRestApiImpl(ref.read(remoteApiProvider));

class EditAccountInfoRepoRestApiImpl implements EditAccInfoRepo {
  final RemoteApi _remoteApi;

  EditAccountInfoRepoRestApiImpl(this._remoteApi);
  @override
  Future<Either<Failure, Null>> updateEmail(EditEmailRequest req) async {
    await Future.delayed(Duration(seconds: 3));
    return Left(ServerFailure(message: 'server_failed'));
  }

  @override
  Future<Either<Failure, Null>> updateAddress(EditAddressRequest req) async {
    await Future.delayed(Duration(seconds: 3));
    return Left(ServerFailure(message: 'server_failed'));
  }
}
