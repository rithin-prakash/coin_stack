import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/card/presentation/blocs/add_card_bloc/add_card_bloc.dart';
import 'package:coin_stack/features/card/presentation/blocs/add_card_bloc/add_card_state.dart';
import 'package:coin_stack/features/card/presentation/widgets/card_added_info.dart';
import 'package:coin_stack/features/card/presentation/widgets/card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CardListPage extends StatelessWidget {
  const CardListPage({super.key, required this.fromProfile});

  final bool fromProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppDimen.pagePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<AddCardBloc, AddCardState>(
              builder: (_, s) {
                if (s is! AddCardLoaded) return Container();
                return CardAddedInfo();
              },
            ),
            Text(
              'Card list',
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text('To add another card, click on the button below'),
            SizedBox(height: 20),
            Expanded(child: CardList()),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                context.navigateTo(AddCardPageRoute());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 5),
                  Text('Add Another Card'),
                ],
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  if (fromProfile) {
                    context.pop();
                  }
                },
                child: Text('Done'),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
