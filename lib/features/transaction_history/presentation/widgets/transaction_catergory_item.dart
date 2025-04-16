import 'package:flutter/material.dart';

class TransactionCatergoryItem extends StatelessWidget {
  const TransactionCatergoryItem({
    super.key,
    required this.title,
    required this.iconColor,
    required this.icon,
    required this.isActive,
    required this.onTap,
  });

  final String title;
  final Color iconColor;
  final IconData icon;
  final bool isActive;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: iconColor.withValues(alpha: .2),
            child: Icon(icon, size: 40, color: iconColor),
          ),
          SizedBox(height: 6),
          Text(title),
          if (isActive)
            Container(
              decoration: BoxDecoration(
                color: iconColor,
                borderRadius: BorderRadius.circular(2),
              ),
              width: 4,
              height: 4,
            ),
        ],
      ),
    );
  }
}
