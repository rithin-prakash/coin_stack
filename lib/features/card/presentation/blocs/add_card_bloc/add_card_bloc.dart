import 'package:coin_stack/features/card/domain/models/add_card_request.dart';
import 'package:coin_stack/features/card/domain/repos/card_repo.dart';
import 'package:coin_stack/features/card/presentation/blocs/add_card_bloc/add_card_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddCardBloc extends Cubit<AddCardState> {
  final CardRepo _repo;
  AddCardBloc(this._repo) : super(AddCardState.initial());

  addCard() async {
    emit(AddCardState.loading());

    final res = await _repo.addCard(
      AddCardRequest(
        cardNumber: 'cardNumber',
        expYear: 'expYear',
        expMonth: 'expMonth',
        cvv: 'cvv',
        fullname: 'fullname',
        email: 'email',
      ),
    );
    res.fold(
      (l) => emit(AddCardState.failure(l)),
      (r) => AddCardState.loaded(),
    );
  }

  reset() {
    emit(AddCardState.initial());
  }
}
