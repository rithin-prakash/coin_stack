import 'package:flutter/material.dart';

class CardAddedInfo extends StatelessWidget {
  const CardAddedInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
