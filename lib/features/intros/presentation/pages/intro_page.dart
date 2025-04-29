import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/core/constants/app_dimen.dart';
import 'package:coin_stack/features/intros/presentation/widgets/animated_dot.dart';
import 'package:coin_stack/features/intros/presentation/widgets/into_page_builder.dart';
import 'package:coin_stack/features/intros/presentation/widgets/intro_money_abroad.dart';
import 'package:coin_stack/features/intros/presentation/widgets/intro_receive_money.dart';
import 'package:coin_stack/features/intros/presentation/widgets/intro_trust_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int currentPage = 0;
  final pages = [IntroTrustPage(), IntroMoneyAbroad(), IntroReceiveMoney()];
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppDimen.pagePadding),
        child: Column(
          children: [
            Expanded(
              child: IntoPageBuilder(
                controller: controller,
                pages: pages,
                onPageChange: (p0) {
                  if (p0 != currentPage) {
                    setState(() {
                      currentPage = p0;
                    });
                  }
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                pages.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: AnimatedDot(isActive: currentPage == index),
                ),
              ),
            ),
            SizedBox(height: AppDimen.intoBottomHeight),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (currentPage == pages.length - 1) {
                      context.replaceRoute(CreateAccountIntroPageRoute());
                      return;
                    }

                    setState(() {
                      currentPage++;
                    });

                    controller.animateToPage(
                      currentPage,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  child: Text("Next"),
                ),
              ),
            ),
            SizedBox(height: AppDimen.intoBottomHeight),
          ],
        ),
      ),
    );
  }
}
