import 'package:flutter/material.dart';

class ThankContackUsText extends StatelessWidget {
  const ThankContackUsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text:
            'Thank you for using Coinstack. If you have any concers, please don\'t hesitate to ',
        style: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(color: Colors.black),
        children: [
          TextSpan(
            text: 'contact us',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
