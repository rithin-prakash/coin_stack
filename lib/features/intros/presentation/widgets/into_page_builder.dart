import 'package:coin_stack/features/intros/presentation/widgets/intro_money_abroad.dart';
import 'package:coin_stack/features/intros/presentation/widgets/intro_receive_money.dart';
import 'package:coin_stack/features/intros/presentation/widgets/intro_trust_page.dart';
import 'package:flutter/material.dart';

class IntoPageBuilder extends StatefulWidget {
  const IntoPageBuilder({super.key});

  @override
  State<IntoPageBuilder> createState() => _IntoPageBuilderState();
}

class _IntoPageBuilderState extends State<IntoPageBuilder> {
  final pages = [IntroTrustPage(), IntroMoneyAbroad(), IntroReceiveMoney()];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (_, i) {
        return pages[i];
      },
    );
  }
}
