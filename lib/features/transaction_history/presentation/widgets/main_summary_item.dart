import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:flutter/material.dart';

class MainSummaryItem extends StatelessWidget {
  const MainSummaryItem({
    super.key,
    required this.bgColor,
    required this.icon,
    required this.title,
    required this.amount,
    required this.textColor,
  });

  final Color bgColor;
  final Widget icon;
  final String title;
  final String amount;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 100,
        maxWidth:
            (MediaQuery.sizeOf(context).width / 2) - (AppDimen.pagePadding + 5),
      ),
      margin: EdgeInsets.symmetric(vertical: 12),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              SizedBox(width: 6),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor.withValues(alpha: .8),
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              amount,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
