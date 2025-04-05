import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/transfer_money/presentation/blocs/selected_purpose_bloc/select_purpose_bloc.dart';
import 'package:coin_stack/features/transfer_money/presentation/widgets/purpose_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            BlocConsumer<SelectPurposeBloc, PuroseOfTransfer?>(
              listener: (context, state) async {
                if (state != null) {
                  await Future.delayed(Duration(seconds: 1));
                  if (context.mounted) {
                    context.navigateTo(TransferMoneyPageRoute());
                  }
                }
              },
              builder: (_, state) {
                return Column(
                  children: [
                    PurposeItem(
                      color: Theme.of(context).primaryColor,
                      subtitle: 'Pay your friends and family',
                      title: 'Personal',
                      icon: Icons.person,
                      value: state == PuroseOfTransfer.personal,
                      onTap: () {
                        context.read<SelectPurposeBloc>().select(
                          PuroseOfTransfer.personal,
                        );
                      },
                    ),
                    PurposeItem(
                      color: Colors.orange,
                      subtitle: 'For payment utility bills',
                      title: 'Payment',
                      icon: Icons.sell,
                      value: state == PuroseOfTransfer.payment,
                      onTap: () {
                        context.read<SelectPurposeBloc>().select(
                          PuroseOfTransfer.payment,
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
