import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:coin_stack/di/di_config.dart';
import 'package:coin_stack/features/splash/presentation/bloc/first_opening_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<FirstOpeningCubit>(),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icon/icon.png'),
            SizedBox(height: 20),
            BlocListener<FirstOpeningCubit, bool>(
              listener: (_, s) {
                if (s) {
                  context.replaceRoute(IntroPageRoute());
                } else {
                  context.replaceRoute(CreateAccountIntroPageRoute());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
