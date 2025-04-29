import 'package:coin_stack/core/validation/validation_params.dart';

class CardNumberValidation extends ValidationParams {
  @override
  bool? get required => true;

  @override
  int? get maxLength => 19;

  @override
  int? get minLength => 19;
}
