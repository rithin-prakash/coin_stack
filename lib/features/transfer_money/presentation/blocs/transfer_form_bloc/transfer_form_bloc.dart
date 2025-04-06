import 'package:coin_stack/core/utls/validation_helper.dart';
import 'package:coin_stack/core/validation/transfer_amount_validation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

const String amount = 'amount';

@injectable
class TransferFormBloc extends Cubit<FormGroup?> {
  late final FormGroup form;

  final validation = TransferAmountValidation();

  TransferFormBloc() : super(null) {
    form = fb.group({
      amount: FormControl<String>(
        value: '',
        validators: generateValidations(validation),
      ),
    });
    emit(form);
  }

  String get phoneValue => form.control(amount).value;
}
