import 'package:coin_stack/features/profile/domain/models/user.dart';
import 'package:coin_stack/features/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:coin_stack/features/profile/presentation/bloc/user_bloc/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      trailing: BlocBuilder<UserCubit, UserState>(
        builder: (_, s) {
          if (s is UserLoading) {
            return SizedBox(
              width: 26,
              height: 26,
              child: CircularProgressIndicator(),
            );
          } else if (s is UserLoaded) {
            return s.u.phoneVerified == PhoneVerifiedStatus.success
                ? CircleAvatar(
                  radius: 16,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(Icons.done),
                )
                : s.u.phoneVerified == PhoneVerifiedStatus.failed
                ? CircleAvatar(
                  radius: 16,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(Icons.close),
                )
                : SizedBox(width: 26, height: 26);
          }
          return SizedBox(width: 26, height: 26);
        },
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
      trailing: BlocBuilder<UserCubit, UserState>(
        builder: (_, s) {
          if (s is UserLoading) {
            return SizedBox(
              width: 26,
              height: 26,
              child: CircularProgressIndicator(),
            );
          } else if (s is UserLoaded) {
            return s.u.idVerified == IdVerifiedStatus.success
                ? CircleAvatar(
                  radius: 16,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(Icons.done),
                )
                : s.u.idVerified == IdVerifiedStatus.failed
                ? CircleAvatar(
                  radius: 16,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(Icons.close),
                )
                : SizedBox(width: 26, height: 26);
          }
          return SizedBox(width: 26, height: 26);
        },
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
      trailing: BlocBuilder<UserCubit, UserState>(
        builder: (_, s) {
          if (s is UserLoading) {
            return SizedBox(
              width: 26,
              height: 26,
              child: CircularProgressIndicator(),
            );
          } else if (s is UserLoaded) {
            return s.u.photoVerified == PhotoVerifiedStatus.success
                ? CircleAvatar(
                  radius: 16,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(Icons.done),
                )
                : s.u.photoVerified == PhotoVerifiedStatus.failed
                ? CircleAvatar(
                  radius: 16,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(Icons.close),
                )
                : SizedBox(width: 26, height: 26);
          }
          return SizedBox(width: 26, height: 26);
        },
      ),
    );
  }
}
