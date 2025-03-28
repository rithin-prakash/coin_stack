// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:coin_stack/features/create_account/presentation/pages/create_account_intro_page.dart'
    as _i2;
import 'package:coin_stack/features/create_account/presentation/pages/create_account_page.dart'
    as _i3;
import 'package:coin_stack/features/create_account/presentation/pages/otp_page.dart'
    as _i6;
import 'package:coin_stack/features/dashboard/presentation/pages/dashboard_main.dart'
    as _i4;
import 'package:coin_stack/features/intros/presentation/pages/intro_page.dart'
    as _i5;
import 'package:coin_stack/features/setup_account/presentation/pages/add_email_page.dart'
    as _i1;
import 'package:coin_stack/features/splash/presentation/pages/splash_page.dart'
    as _i7;
import 'package:flutter/material.dart' as _i9;

/// generated route for
/// [_i1.AddEmailPage]
class AddEmailPageRoute extends _i8.PageRouteInfo<AddEmailPageRouteArgs> {
  AddEmailPageRoute({_i9.Key? key, List<_i8.PageRouteInfo>? children})
    : super(
        AddEmailPageRoute.name,
        args: AddEmailPageRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'AddEmailPageRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddEmailPageRouteArgs>(
        orElse: () => const AddEmailPageRouteArgs(),
      );
      return _i1.AddEmailPage(key: args.key);
    },
  );
}

class AddEmailPageRouteArgs {
  const AddEmailPageRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'AddEmailPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.CreateAccountIntroPage]
class CreateAccountIntroPageRoute extends _i8.PageRouteInfo<void> {
  const CreateAccountIntroPageRoute({List<_i8.PageRouteInfo>? children})
    : super(CreateAccountIntroPageRoute.name, initialChildren: children);

  static const String name = 'CreateAccountIntroPageRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.CreateAccountIntroPage();
    },
  );
}

/// generated route for
/// [_i3.CreateAccountPage]
class CreateAccountPageRoute extends _i8.PageRouteInfo<void> {
  const CreateAccountPageRoute({List<_i8.PageRouteInfo>? children})
    : super(CreateAccountPageRoute.name, initialChildren: children);

  static const String name = 'CreateAccountPageRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.CreateAccountPage();
    },
  );
}

/// generated route for
/// [_i4.DashboardMain]
class DashboardMainRoute extends _i8.PageRouteInfo<void> {
  const DashboardMainRoute({List<_i8.PageRouteInfo>? children})
    : super(DashboardMainRoute.name, initialChildren: children);

  static const String name = 'DashboardMainRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.DashboardMain();
    },
  );
}

/// generated route for
/// [_i5.IntroPage]
class IntroPageRoute extends _i8.PageRouteInfo<void> {
  const IntroPageRoute({List<_i8.PageRouteInfo>? children})
    : super(IntroPageRoute.name, initialChildren: children);

  static const String name = 'IntroPageRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.IntroPage();
    },
  );
}

/// generated route for
/// [_i6.OtpPage]
class OtpPageRoute extends _i8.PageRouteInfo<void> {
  const OtpPageRoute({List<_i8.PageRouteInfo>? children})
    : super(OtpPageRoute.name, initialChildren: children);

  static const String name = 'OtpPageRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.OtpPage();
    },
  );
}

/// generated route for
/// [_i7.SplashPage]
class SplashPageRoute extends _i8.PageRouteInfo<void> {
  const SplashPageRoute({List<_i8.PageRouteInfo>? children})
    : super(SplashPageRoute.name, initialChildren: children);

  static const String name = 'SplashPageRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.SplashPage();
    },
  );
}
