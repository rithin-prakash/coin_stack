import 'package:auto_route/auto_route.dart';
import 'package:coin_stack/core/app_router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashPageRoute.page, initial: true),
    AutoRoute(page: CreateAccountIntroPageRoute.page),
  ];
}
