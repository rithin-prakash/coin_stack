import 'package:freezed_annotation/freezed_annotation.dart';

part 'connected_profile.freezed.dart';
part 'connected_profile.g.dart';

@freezed
abstract class ConnectedProfile with _$ConnectedProfile {
  const factory ConnectedProfile({
    required String id,
    required String name,
    required String phone,
    String? email,
    String? profileUrl,
  }) = _ConnectedProfile;

  factory ConnectedProfile.fromJson(Map<String, dynamic> json) =>
      _$ConnectedProfileFromJson(json);
}
