import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/share_files/domain/models/share_file_item.dart';
import 'package:coin_stack/features/share_files/domain/repo/share_files_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:share_plus/share_plus.dart';

@LazySingleton(as: ShareFilesRepo)
class ShareFilesRepoSharePlusImpl implements ShareFilesRepo {
  @override
  Future<Either<Failure, Null>> shareFiles(List<ShareFileItem> files) async {
    final file = List<XFile>.from(
      files.map((e) {
        return XFile.fromData(
          e.data,
          mimeType: e.mimeType == MimeType.image ? 'image/jpeg' : null,
        );
      }),
    );
    final result = await Share.shareXFiles(file);

    if (result.status != ShareResultStatus.success) {
      return Left(ShareFileFailure(message: result.status.name));
    }
    return Right(null);
  }
}
