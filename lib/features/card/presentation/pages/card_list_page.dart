import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CardListPage extends StatelessWidget {
  const CardListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppDimen.pagePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(14),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.green.shade900,
                        child: Icon(Icons.done),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Your card is successfully added',
                        style: TextStyle(color: Colors.green.shade900),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
              ],
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
              onPressed: () {},
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
              child: OutlinedButton(onPressed: () {}, child: Text('Done')),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class CardList extends StatefulWidget {
  const CardList({super.key});

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  var item = ['************12342', '************12344', '************123443'];

  @override
  Widget build(BuildContext context) {
    return item.isEmpty
        ? Container()
        : ListView.builder(
          itemCount: item.length,
          itemBuilder: (_, i) {
            return CardItem(
              cardNumber: item[i],
              deleteCard: (c) {
                setState(() {
                  item.remove(c);
                });
              },
            );
          },
        );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.cardNumber,
    required this.deleteCard,
  });

  final String cardNumber;
  final Function(String) deleteCard;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(cardNumber),
      direction: DismissDirection.endToStart,
      background: Container(
        decoration: BoxDecoration(
          color: Colors.red.shade100,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.symmetric(vertical: 4),
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(right: 30),
          child: Icon(Icons.delete, color: Colors.red),
        ),
      ),
      onDismissed: (direction) {
        deleteCard(cardNumber);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.symmetric(vertical: 4),
        child: ListTile(
          style: ListTileStyle.list,
          leading: Icon(Icons.credit_card),
          title: Text(cardNumber),
        ),
      ),
    );
  }
}
