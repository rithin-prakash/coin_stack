import 'package:coin_stack/core/utls/failure.dart';
import 'package:coin_stack/features/share_files/domain/models/share_file_item.dart';
import 'package:dartz/dartz.dart';

abstract interface class ShareFilesRepo {
  Future<Either<Failure, Null>> shareFiles(List<ShareFileItem> files);
}
