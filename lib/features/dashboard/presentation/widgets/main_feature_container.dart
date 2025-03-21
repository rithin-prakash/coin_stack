import 'package:flutter/material.dart';

class MainFeatureContainer extends StatelessWidget {
  const MainFeatureContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.sizeOf(context).width - 30,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [SendMoneyHomeIcon(), ReceiveMoneyHomeIcon(), BankHomeIcon()],
      ),
    );
  }
}

class SendMoneyHomeIcon extends StatelessWidget {
  const SendMoneyHomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.send, size: 30, color: Theme.of(context).primaryColor),
          SizedBox(height: 6),
          Text('Send'),
        ],
      ),
    );
  }
}

class ReceiveMoneyHomeIcon extends StatelessWidget {
  const ReceiveMoneyHomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.call_received, size: 30, color: Colors.orange),
          SizedBox(height: 6),
          Text('Request'),
        ],
      ),
    );
  }
}

class BankHomeIcon extends StatelessWidget {
  const BankHomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_balance, size: 30, color: Colors.green),
          SizedBox(height: 6),
          Text('Bank'),
        ],
      ),
    );
  }
}
