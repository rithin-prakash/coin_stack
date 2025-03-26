// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:coin_stack/features/create_account/presentation/pages/create_account_intro_page.dart'
    as _i1;
import 'package:coin_stack/features/intros/presentation/pages/intro_page.dart'
    as _i2;
import 'package:coin_stack/features/splash/presentation/pages/splash_page.dart'
    as _i3;

/// generated route for
/// [_i1.CreateAccountIntroPage]
class CreateAccountIntroPageRoute extends _i4.PageRouteInfo<void> {
  const CreateAccountIntroPageRoute({List<_i4.PageRouteInfo>? children})
    : super(CreateAccountIntroPageRoute.name, initialChildren: children);

  static const String name = 'CreateAccountIntroPageRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.CreateAccountIntroPage();
    },
  );
}

/// generated route for
/// [_i2.IntroPage]
class IntroPageRoute extends _i4.PageRouteInfo<void> {
  const IntroPageRoute({List<_i4.PageRouteInfo>? children})
    : super(IntroPageRoute.name, initialChildren: children);

  static const String name = 'IntroPageRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.IntroPage();
    },
  );
}

/// generated route for
/// [_i3.SplashPage]
class SplashPageRoute extends _i4.PageRouteInfo<void> {
  const SplashPageRoute({List<_i4.PageRouteInfo>? children})
    : super(SplashPageRoute.name, initialChildren: children);

  static const String name = 'SplashPageRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.SplashPage();
    },
  );
}
