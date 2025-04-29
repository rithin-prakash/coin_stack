import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transaction_process_type_bloc/transaction_process_type.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/transaction_process_type_bloc/transaction_process_type_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      onTap: () {
        context.read<TransactionProcessTypeBloc>().changeType(
          TransactionProcessType.send,
        );
        context.navigateTo(ChooseReceipientPageRoute());
      },
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
      onTap: () {
        context.read<TransactionProcessTypeBloc>().changeType(
          TransactionProcessType.receive,
        );
        context.navigateTo(ChooseReceipientPageRoute());
      },
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
