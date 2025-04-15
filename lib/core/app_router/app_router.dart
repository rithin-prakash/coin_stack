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
    AutoRoute(page: IntroPageRoute.page),
    AutoRoute(page: CreateAccountPageRoute.page),
    AutoRoute(page: DashboardMainRoute.page),
    AutoRoute(page: OtpPageRoute.page),
    AutoRoute(page: AddEmailPageRoute.page),
    AutoRoute(page: AddHomeAddressPageRoute.page),
    AutoRoute(page: AddPersonalInfoPageRoute.page),
    AutoRoute(page: AddCountryOfResidenceRoute.page),
    AutoRoute(page: VerifyAccountIntroPageRoute.page),
    AutoRoute(page: IdScanIntroPageRoute.page),
    AutoRoute(page: TakeSelfieIntroPageRoute.page),
    AutoRoute(page: PasscodePageRoute.page),
    AutoRoute(page: CreateAccountSuccessPageRoute.page),
    AutoRoute(page: ChooseReceipientPageRoute.page),
    AutoRoute(page: ScanQrPageRoute.page),
    AutoRoute(page: SelectPurposePageRoute.page),
    AutoRoute(page: TransferMoneyPageRoute.page),
    AutoRoute(page: SendMoneyResultPageRoute.page),
    AutoRoute(page: CreateAccountTncPageRoute.page),
    AutoRoute(page: CreateAccountPrivacyPolicyPageRoute.page),
    AutoRoute(page: RequestMoneyResultPageRoute.page),
  ];
}
