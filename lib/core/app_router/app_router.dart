import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
RootStackRouter router(ref) => AppRouter();

@AutoRouterConfig(replaceInRouteName: 'Page')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashPageRoute.page, initial: true),
    AutoRoute(page: CreateAccountIntroPageRoute.page),
    AutoRoute(page: IntroPageRoute.page),
    AutoRoute(page: CreateAccountPageRoute.page),
    AutoRoute(page: DashboardMainRoute.page),
    AutoRoute(page: OtpPageRoute.page),
    AutoRoute(page: AddEmailPageRoute.page),
    AutoRoute(page: AddHomeAddressPageRoute.page),
    AutoRoute(page: AddPersonalInfoPageRoute.page),
  ];
}
