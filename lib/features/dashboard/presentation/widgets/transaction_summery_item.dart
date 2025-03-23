import 'package:flutter/material.dart';

class TransactionSummeryItem extends StatelessWidget {
  const TransactionSummeryItem({
    super.key,
    required this.title,
    required this.iconColor,
    required this.value,
    this.amountColor,
    required this.icon,
  });

  final String title;
  final Color iconColor;
  final String value;
  final Color? amountColor;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 22,
        backgroundColor: iconColor.withValues(alpha: .2),
        child: Icon(icon, size: 30, color: iconColor),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value, style: TextStyle(color: amountColor)),
        ],
      ),
      trailing: Icon(Icons.arrow_forward_ios_rounded, size: 20),
    );
  }
}
