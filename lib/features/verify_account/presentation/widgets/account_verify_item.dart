import 'package:coin_stack/features/profile/presentation/providers/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class AccountVerifyItem extends ConsumerWidget {
  const AccountVerifyItem({super.key});
}

class OtpVerifyItem extends AccountVerifyItem {
  const OtpVerifyItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProfileProvider);
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor.withValues(alpha: .1),
        child: Text(
          '1',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      title: Text('Phone Verified'),
      trailing: user.when(
        data: (data) {
          return data.phoneVerified
              ? CircleAvatar(
                radius: 16,
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(Icons.done),
              )
              : CircleAvatar(
                radius: 16,
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(Icons.close),
              );
        },
        error: (_, _) => Container(),
        loading:
            () => SizedBox(
              width: 26,
              height: 26,
              child: CircularProgressIndicator(),
            ),
      ),
    );
  }
}

class DocumentVerifyItem extends AccountVerifyItem {
  const DocumentVerifyItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProfileProvider);

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor.withValues(alpha: .1),
        child: Text(
          '2',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      title: Text('Checking Document ID'),
      trailing: user.when(
        data: (data) {
          return data.idVerified
              ? CircleAvatar(
                radius: 16,
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(Icons.done),
              )
              : CircleAvatar(
                radius: 16,
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(Icons.close),
              );
        },
        error: (_, _) => Container(),
        loading:
            () => SizedBox(
              width: 26,
              height: 26,
              child: CircularProgressIndicator(),
            ),
      ),
    );
  }
}

class VerifPhotoItem extends AccountVerifyItem {
  const VerifPhotoItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProfileProvider);

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor.withValues(alpha: .1),
        child: Text(
          '3',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      title: Text('Verify Photo'),
      trailing: user.when(
        data: (data) {
          return data.photoVerified
              ? CircleAvatar(
                radius: 16,
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(Icons.done),
              )
              : CircleAvatar(
                radius: 16,
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(Icons.close),
              );
        },
        error: (_, _) => Container(),
        loading:
            () => SizedBox(
              width: 26,
              height: 26,
              child: CircularProgressIndicator(),
            ),
      ),
    );
  }
}
