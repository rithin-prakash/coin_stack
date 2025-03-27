import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_notifier.g.dart';

@Riverpod(keepAlive: true)
class AccountNotifier extends _$AccountNotifier {
  @override
  bool build() {
    return false;
  }

  setAccountType(bool isCreatingAcc) {
    state = isCreatingAcc;
  }
}
