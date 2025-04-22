import 'package:coin_stack/features/card/presentation/blocs/add_card_bloc/add_card_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddCardBloc extends Cubit<AddCardState> {
  AddCardBloc() : super(AddCardState.initial());

  addCard() {
    emit(AddCardState.loading());

    // final res = await
  }
}
