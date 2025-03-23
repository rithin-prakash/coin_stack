import 'package:flutter/material.dart';

class TransactionCatergoryItem extends StatelessWidget {
  const TransactionCatergoryItem({
    super.key,
    required this.title,
    required this.iconColor,
    required this.icon,
  });

  final String title;
  final Color iconColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
