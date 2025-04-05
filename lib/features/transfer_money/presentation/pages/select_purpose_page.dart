import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/transfer_money/presentation/widgets/purpose_item.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SelectPurposePage extends StatelessWidget {
  const SelectPurposePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey.shade100),
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimen.pagePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select purpose",
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Select your purpose for sending money',
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 20),
            Column(
              children: [
                PurposeItem(
                  color: Theme.of(context).primaryColor,
                  subtitle: 'Pay your friends and family',
                  title: 'Personal',
                  icon: Icons.person,
                  value: true,
                ),
                PurposeItem(
                  color: Colors.orange,
                  subtitle: 'For payment utility bills',
                  title: 'Payment',
                  icon: Icons.sell,
                  value: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
