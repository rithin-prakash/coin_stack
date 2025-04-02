import 'package:coin_stack/features/profile/domain/models/currency.dart';
import 'package:coin_stack/features/setup_account/domain/models/country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum PhoneVerifiedStatus {
  initiated,
  success,
  failed;

  factory PhoneVerifiedStatus.fromString(String v) {
    return PhoneVerifiedStatus.values.firstWhere(
      (e) => e.name == v.toLowerCase(),
    );
  }
}

enum IdVerifiedStatus {
  initiated,
  success,
  failed;

  factory IdVerifiedStatus.fromString(String v) {
    return IdVerifiedStatus.values.firstWhere((e) => e.name == v.toLowerCase());
  }
}

enum PhotoVerifiedStatus {
  initiated,
  success,
  failed;

  factory PhotoVerifiedStatus.fromString(String v) {
    return PhotoVerifiedStatus.values.firstWhere(
      (e) => e.name == v.toLowerCase(),
    );
  }
}

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
    @PhoneVerifiedStatusConverter()
    @Default(PhoneVerifiedStatus.initiated)
    PhoneVerifiedStatus phoneVerified,
    @IdVerifiedStatusConverter()
    @Default(IdVerifiedStatus.initiated)
    IdVerifiedStatus idVerified,
    @PhotoVerifiedStatusConverter()
    @Default(PhotoVerifiedStatus.initiated)
    PhotoVerifiedStatus photoVerified,
    @Default(1) int step,
    @JsonKey(name: 'primaryCurrency') required Currency primaryCurr,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

class PhoneVerifiedStatusConverter
    implements JsonConverter<PhoneVerifiedStatus, String> {
  const PhoneVerifiedStatusConverter();

  @override
  PhoneVerifiedStatus fromJson(String json) =>
      PhoneVerifiedStatus.fromString(json);

  @override
  String toJson(PhoneVerifiedStatus object) => object.name;
}

class IdVerifiedStatusConverter
    implements JsonConverter<IdVerifiedStatus, String> {
  const IdVerifiedStatusConverter();

  @override
  IdVerifiedStatus fromJson(String json) => IdVerifiedStatus.fromString(json);

  @override
  String toJson(IdVerifiedStatus object) => object.name;
}

class PhotoVerifiedStatusConverter
    implements JsonConverter<PhotoVerifiedStatus, String> {
  const PhotoVerifiedStatusConverter();

  @override
  PhotoVerifiedStatus fromJson(String json) =>
      PhotoVerifiedStatus.fromString(json);

  @override
  String toJson(PhotoVerifiedStatus object) => object.name;
}
