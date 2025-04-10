import 'package:coin_stack/features/transfer_money/domain/models/transaction_details_request.dart';
import 'package:coin_stack/features/transfer_money/domain/repos/transfer_repo.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transfer_details_bloc/transaction_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class TransferDetailsBloc extends Cubit<TransactionDetailsState> {
  final TransferRepo _repo;

  TransferDetailsBloc(this._repo) : super(TransactionDetailsState.initial());

  getDetails(String id) async {
    // await Future.delayed(Duration(seconds: 6));
    emit(TransactionDetailsState.loading());

    final res = await _repo.transactionDetails(
      TransactionDetailsRequest(id: id),
    );

    res.fold(
      (l) => emit(TransactionDetailsState.failed(l)),
      (r) => emit(TransactionDetailsState.loaded(r)),
    );
  }
}
