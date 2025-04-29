import 'dart:typed_data';

import 'package:coin_stack/features/share_files/domain/models/share_file_item.dart';
import 'package:coin_stack/features/share_files/domain/repo/share_files_repo.dart';
import 'package:coin_stack/features/share_files/presentation/share_file_bloc/share_file_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ShareFileBloc extends Cubit<ShareFileState> {
  final ShareFilesRepo _repo;

  ShareFileBloc(this._repo) : super(ShareFileState.initial());

  shareFile(Uint8List data, String mimeType, String? path, String? name) {
    final x = [
      ShareFileItem(
        data: data,
        mimeType: MimeType.fromString(mimeType),
        path: path ?? '',
        name: name,
      ),
    ];
    _repo.shareFiles(x);
  }
}
