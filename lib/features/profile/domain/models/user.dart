import 'package:coin_stack/features/setup_account/domain/models/country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  factory User({
    required String phone,
    required String phoneCode,
    String? email,
    String? addressLine,
    String? city,
    String? pincode,
    String? fullName,
    String? username,
    DateTime? dob,
    Country? residentCountry,
    @Default(false) bool phoneVerified,
    @Default(false) bool idVerified,
    @Default(false) bool photoVerified,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
