import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_first_opening.g.dart';

@riverpod
Future<bool> isFirstOpening(ref) async {
  await Future.delayed(Duration(seconds: 9));
  return true;
}
