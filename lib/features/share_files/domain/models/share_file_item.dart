import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'share_file_item.freezed.dart';

enum MimeType {
  image;

  factory MimeType.fromString(String v) => MimeType.values.firstWhere(
    (e) => e.name.toLowerCase() == v.toLowerCase(),
  );
}

@freezed
abstract class ShareFileItem with _$ShareFileItem {
  const factory ShareFileItem({
    required String path,
    required Uint8List data,
    required MimeType mimeType,
    String? name,
  }) = _ShareFileItem;
}
