import 'package:coin_stack/core/validation/validation_params.dart';

class PasswordValidationCr extends ValidationParams {
  @override
  bool? get required => true;

  @override
  int? get minLength => 8;

  @override
  int? get maxLength => 20;

  @override
  String? get pattern =>
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$';
}
