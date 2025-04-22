import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.title,
    required this.icon,
    required this.iconBgColor,
    required this.onTap,
  });

  final String title;
  final Widget icon;
  final Color iconBgColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: iconBgColor,
        child: icon,
      ),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
