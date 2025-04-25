import 'package:coin_stack/core/validation/validation_params.dart';

class MonthYearValidation extends ValidationParams {
  @override
  bool? get required => true;

  @override
  int? get maxLength => 5;

  @override
  int? get minLength => 5;
}
