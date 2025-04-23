import 'package:coin_stack/features/card/domain/models/payment_option.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.card, required this.deleteCard});

  final PaymentOption card;
  final Function(PaymentOption) deleteCard;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(card.id),
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
        deleteCard(card);
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
          title: Text(card.name),
        ),
      ),
    );
  }
}
