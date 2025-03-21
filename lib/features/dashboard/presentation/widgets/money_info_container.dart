import 'package:flutter/material.dart';

class MoneyInfoContainer extends StatelessWidget {
  const MoneyInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      height: MediaQuery.sizeOf(context).height * (1 / 3),
    );
  }
}
