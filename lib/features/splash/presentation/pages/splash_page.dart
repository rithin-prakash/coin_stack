import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/features/splash/presentation/provider/is_first_opening.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final x = ref.watch(isFirstOpeningProvider);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/icon/icon.png'),
          SizedBox(height: 20),

          x.when(
            data: (data) {
              context.replaceRoute(CreateAccountIntroPageRoute());
              return Container();
            },
            error: (error, stackTrace) => Container(),
            loading: () {
              return CircularProgressIndicator();
            },
          ),
        ],
      ),
    );
  }
}
