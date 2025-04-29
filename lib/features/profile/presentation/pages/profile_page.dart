import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/profile/presentation/widgets/profile_container.dart';
import 'package:coin_stack/features/profile/presentation/widgets/profile_menu.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'), scrolledUnderElevation: 0.0),
      body: Padding(
        padding: const EdgeInsets.only(
          top: AppDimen.pagePadding,
          left: AppDimen.pagePadding,
          right: AppDimen.pagePadding,
        ),
        child: ListView(
          children: [ProfileContainer(), SizedBox(height: 20), ProfileMenu()],
        ),
      ),
    );
  }
}
