import 'package:flutter/material.dart';

class MoneyInfoContainer extends StatelessWidget {
  const MoneyInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      height: MediaQuery.sizeOf(context).height * (1 / 3),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '\$20000',
            style: Theme.of(
              context,
            ).textTheme.displaySmall?.copyWith(color: Colors.white),
          ),
          Text(
            'Available balance',
            style: Theme.of(
              context,
            ).textTheme.titleSmall?.copyWith(color: Colors.white60),
          ),
          SizedBox(height: 20),
          OutlinedButton(
            style: Theme.of(context).outlinedButtonTheme.style?.copyWith(
              minimumSize: WidgetStatePropertyAll(Size(150, 50)),
              maximumSize: WidgetStatePropertyAll(Size(200, 50)),
              iconColor: WidgetStatePropertyAll(Colors.white),
              iconSize: WidgetStatePropertyAll(28),
              // backgroundColor: WidgetStatePropertyAll(Colors.white),
              textStyle: WidgetStatePropertyAll(
                TextStyle(color: Colors.white, fontSize: 18),
              ),
              side: WidgetStatePropertyAll(BorderSide(color: Colors.white)),
            ),
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.credit_score_outlined),
                SizedBox(width: 10),
                Text('Add Money', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          SizedBox(height: 25), //added for visibility stack widget
        ],
      ),
    );
  }
}
