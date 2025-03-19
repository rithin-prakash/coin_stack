import 'package:flutter/material.dart';

abstract class AccountVerifyItem extends StatelessWidget {
  const AccountVerifyItem({super.key});
}

class OtpVerifyItem extends AccountVerifyItem {
  const OtpVerifyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor.withValues(alpha: .1),
        child: Text(
          '1',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      title: Text('Phone Verified'),
      trailing: CircleAvatar(
        radius: 16,
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.done),
      ),
    );
  }
}

class DocumentVerifyItem extends AccountVerifyItem {
  const DocumentVerifyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor.withValues(alpha: .1),
        child: Text(
          '2',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      title: Text('Checking Document ID'),
      trailing: CircleAvatar(
        radius: 16,
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.done),
      ),
    );
  }
}

class VerifPhotoItem extends AccountVerifyItem {
  const VerifPhotoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor.withValues(alpha: .1),
        child: Text(
          '3',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      title: Text('Verify Photo'),
      trailing: SizedBox(
        width: 26,
        height: 26,
        child: CircularProgressIndicator(),
      ),
      //  CircleAvatar(
      //   radius: 16,
      //   backgroundColor: Theme.of(context).primaryColor,
      //   child: Icon(Icons.done),
      // ),
    );
  }
}
