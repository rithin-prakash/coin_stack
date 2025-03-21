import 'package:coin_stack/features/dashboard/presentation/widgets/main_feature_container.dart';
import 'package:coin_stack/features/dashboard/presentation/widgets/money_info_container.dart';
import 'package:coin_stack/features/dashboard/presentation/widgets/transaction_summary.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withValues(alpha: .92),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.emoji_events, color: Colors.white, size: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.white, size: 30),
          ),
        ],
        title: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            hintText: 'Search "Payments"',
            hintStyle: TextStyle(color: Colors.white70),
            prefixIcon: Icon(Icons.search, color: Colors.white),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: .9, color: Colors.white70),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: .9, color: Colors.white70),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(children: [MoneyInfoContainer(), TransactionSummary()]),
            Positioned(
              top: MediaQuery.sizeOf(context).height * (1 / 3) - 50,
              right: 15,
              left: 15,
              child: MainFeatureContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
