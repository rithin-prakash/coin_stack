import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/profile/presentation/widgets/dark_mode_button.dart';
import 'package:coin_stack/features/profile/presentation/widgets/profile_item.dart';
import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimen.containerBorderRadius),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DarkModeButton(),
          Divider(color: Colors.grey.shade400),
          ProfileItem(
            icon: Icon(
              Icons.person,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
            iconBgColor: Theme.of(context).primaryColor.withValues(alpha: .3),
            onTap: () {},
            title: 'Personal Info',
          ),
          Divider(color: Colors.grey.shade400),
          ProfileItem(
            icon: Icon(Icons.credit_card, color: Colors.orange, size: 30),
            iconBgColor: Colors.orange.withValues(alpha: .3),
            onTap: () {
              context.navigateTo(CardListPageRoute(fromProfile: true));
            },
            title: 'Cards',
          ),
          Divider(color: Colors.grey.shade400),
          ProfileItem(
            icon: Icon(Icons.history_sharp, color: Colors.red, size: 30),
            iconBgColor: Colors.red.withValues(alpha: .3),
            onTap: () {},
            title: 'Transactions',
          ),
          Divider(color: Colors.grey.shade400),
          ProfileItem(
            icon: Icon(
              Icons.settings,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
            iconBgColor: Theme.of(context).primaryColor.withValues(alpha: .3),
            onTap: () {},
            title: 'Settings',
          ),
          Divider(color: Colors.grey.shade400),
          ProfileItem(
            icon: Icon(Icons.edit_document, color: Colors.green, size: 30),
            iconBgColor: Colors.green.withValues(alpha: .3),
            onTap: () {},
            title: 'Terms and Conditions',
          ),
        ],
      ),
    );
  }
}
