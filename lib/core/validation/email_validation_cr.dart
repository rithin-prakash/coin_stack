import 'package:coin_stack/core/validation/validation_params.dart';

class EmailValidationCr extends ValidationParams {
  @override
  bool? get required => true;

  @override
  bool get email => true;
}
