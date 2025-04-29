import 'package:coin_stack/features/card/domain/models/payment_option.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SelectPaymentOptionBloc extends Cubit<PaymentOption?> {
  SelectPaymentOptionBloc() : super(null);

  select(PaymentOption option) async {
    emit(option);
  }

  deselectOption() {
    emit(null);
  }
}
