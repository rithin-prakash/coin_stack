import 'package:coin_stack/core/validation/validation_params.dart';
import 'package:reactive_forms/reactive_forms.dart';

Map<String, String Function(Object)> generateValidationMessages(
  ValidationParams validators,
  String label,
) {
  return {
    if (validators.required != null && validators.required!)
      ValidationMessage.required: (_) => '$label must not be empty',
    if (validators.email != null && validators.email!)
      ValidationMessage.email: (_) => '$label should be valid email',
    if (validators.minLength != null)
      ValidationMessage.minLength:
          (c) =>
              '$label should be atleast ${(c as Map)['requiredLength']} in length',
    if (validators.maxLength != null)
      ValidationMessage.maxLength:
          (c) =>
              '$label should be atmost ${(c as Map)['requiredLength']} in length',
    if (validators.pattern != null && label.toLowerCase() == 'password')
      ValidationMessage.pattern:
          (_) =>
              '$label should contain atleast 1 uppercase, 1 lowercase, 1 digit, 1 spacial character',
  };
}

List<Validator<dynamic>> generateValidations(
  ValidationParams validationParams,
) {
  return [
    if (validationParams.required != null && validationParams.required!)
      Validators.required,
    if (validationParams.email != null && validationParams.email!)
      Validators.email,
    if (validationParams.minLength != null)
      Validators.minLength(validationParams.minLength!),
    if (validationParams.maxLength != null)
      Validators.maxLength(validationParams.maxLength!),
    if (validationParams.pattern != null)
      Validators.pattern(validationParams.pattern!),
  ];
}
