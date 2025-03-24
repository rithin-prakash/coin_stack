import 'package:coin_stack/core/constants/app_dimen.dart';
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

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimen.containerBorderRadius),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
              'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671116.jpg?t=st=1742828394~exp=1742831994~hmac=7a883f37643f90d5eac74cd865f1ebf4eb3cc24bdb2156db87e850e3d14d1b3e&w=1380',
            ),
          ),
          Text('Name', style: Theme.of(context).textTheme.headlineSmall),
          Text('email@rmail.com', style: Theme.of(context).textTheme.bodyLarge),
          Text('+7689668393', style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}
