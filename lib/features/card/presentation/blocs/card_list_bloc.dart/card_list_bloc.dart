import 'package:coin_stack/features/card/domain/models/payment_option.dart';
import 'package:coin_stack/features/card/domain/repos/card_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CardListBloc extends Cubit<List<PaymentOption>> {
  final CardRepo _transferRepo;

  CardListBloc(this._transferRepo) : super([]);

  getList() async {
    final res = await _transferRepo.fetchPayOptions();

    res.fold((l) {}, (r) {
      emit(r);
    });
  }
}
