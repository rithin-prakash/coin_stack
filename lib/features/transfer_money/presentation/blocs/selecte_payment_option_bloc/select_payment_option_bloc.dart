import 'package:coin_stack/features/transfer_money/domain/models/payment_option.dart';
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
