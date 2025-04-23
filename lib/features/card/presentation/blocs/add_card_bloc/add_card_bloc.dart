import 'package:coin_stack/core/utls/validation_helper.dart';
import 'package:coin_stack/core/validation/card_number_validation.dart';
import 'package:coin_stack/core/validation/email_validation_cr.dart';
import 'package:coin_stack/core/validation/text_validation.dart';
import 'package:coin_stack/features/card/domain/models/add_card_request.dart';
import 'package:coin_stack/features/card/domain/repos/card_repo.dart';
import 'package:coin_stack/features/card/presentation/blocs/add_card_bloc/add_card_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

const String cardFullName = 'fullName';
const String cardEmail = 'email';
const String cardNumber = 'cardNumber';
const String cardMonthYear = 'monthYear';
const String cardCvv = 'cvv';

@injectable
class AddCardBloc extends Cubit<AddCardState> {
  final CardRepo _repo;
  late final FormGroup form;
  AddCardBloc(this._repo) : super(AddCardState.initial()) {
    form = fb.group({
      cardFullName: FormControl<String>(
        validators: generateValidations(textVal),
      ),
      cardEmail: FormControl<String>(
        validators: generateValidations(cardEmailVal),
      ),
      cardNumber: FormControl<String>(
        validators: generateValidations(cardNumberValidation),
      ),
      cardMonthYear: FormControl<String>(
        validators: generateValidations(textVal),
      ),
      cardCvv: FormControl<String>(validators: generateValidations(textVal)),
    });
  }

  final textVal = TextValidation();
  final cardEmailVal = EmailValidationCr();
  final cardNumberValidation = CardNumberValidation();

  String get month =>
      (form.control(cardMonthYear).value as String).split('/').first;

  String get year =>
      (form.control(cardMonthYear).value as String).split('/').last;

  addCard() async {
    emit(AddCardState.loading());

    final res = await _repo.addCard(
      AddCardRequest(
        cardNumber: form.control(cardNumber).value,
        expYear: year,
        expMonth: month,
        cvv: form.control(cardCvv).value,
        fullname: form.control(cardFullName).value,
        email: form.control(cardEmail).value,
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
