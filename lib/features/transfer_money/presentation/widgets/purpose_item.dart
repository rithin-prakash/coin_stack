import 'package:coin_stack/features/transfer_money/presentation/widgets/custom_radio.dart';
import 'package:flutter/material.dart';

class PurposeItem extends StatelessWidget {
  const PurposeItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.value,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final Color color;
  final bool value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        // boxShadow: [BoxShadow(offset: Offset(2, 2))],
        borderRadius: BorderRadius.circular(20),
        border: Border(bottom: BorderSide(color: value ? color : Colors.white)),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withValues(alpha: .3),
          child: Icon(icon, color: color),
        ),
        title: Text(title),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.black54)),
        trailing: CustomRadio(value: value, color: color),
      ),
    );
  }
}
