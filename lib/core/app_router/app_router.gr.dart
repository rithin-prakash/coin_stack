// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:coin_stack/features/create_account/presentation/pages/create_account_intro_page.dart'
    as _i5;
import 'package:coin_stack/features/create_account/presentation/pages/create_account_page.dart'
    as _i6;
import 'package:coin_stack/features/create_account/presentation/pages/otp_page.dart'
    as _i9;
import 'package:coin_stack/features/dashboard/presentation/pages/dashboard_main.dart'
    as _i7;
import 'package:coin_stack/features/intros/presentation/pages/intro_page.dart'
    as _i8;
import 'package:coin_stack/features/setup_account/presentation/pages/add_country_of_residence.dart'
    as _i1;
import 'package:coin_stack/features/setup_account/presentation/pages/add_email_page.dart'
    as _i2;
import 'package:coin_stack/features/setup_account/presentation/pages/add_home_address_page.dart'
    as _i3;
import 'package:coin_stack/features/setup_account/presentation/pages/add_personal_info_page.dart'
    as _i4;
import 'package:coin_stack/features/splash/presentation/pages/splash_page.dart'
    as _i10;
import 'package:flutter/material.dart' as _i12;

/// generated route for
/// [_i1.AddCountryOfResidence]
class AddCountryOfResidenceRoute
    extends _i11.PageRouteInfo<AddCountryOfResidenceRouteArgs> {
  AddCountryOfResidenceRoute({
    _i12.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
         AddCountryOfResidenceRoute.name,
         args: AddCountryOfResidenceRouteArgs(key: key),
         initialChildren: children,
       );

  static const String name = 'AddCountryOfResidenceRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddCountryOfResidenceRouteArgs>(
        orElse: () => const AddCountryOfResidenceRouteArgs(),
      );
      return _i1.AddCountryOfResidence(key: args.key);
    },
  );
}

class AddCountryOfResidenceRouteArgs {
  const AddCountryOfResidenceRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'AddCountryOfResidenceRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.AddEmailPage]
class AddEmailPageRoute extends _i11.PageRouteInfo<void> {
  const AddEmailPageRoute({List<_i11.PageRouteInfo>? children})
    : super(AddEmailPageRoute.name, initialChildren: children);

  static const String name = 'AddEmailPageRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i2.AddEmailPage();
    },
  );
}

/// generated route for
/// [_i3.AddHomeAddressPage]
class AddHomeAddressPageRoute extends _i11.PageRouteInfo<void> {
  const AddHomeAddressPageRoute({List<_i11.PageRouteInfo>? children})
    : super(AddHomeAddressPageRoute.name, initialChildren: children);

  static const String name = 'AddHomeAddressPageRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i3.AddHomeAddressPage();
    },
  );
}

/// generated route for
/// [_i4.AddPersonalInfoPage]
class AddPersonalInfoPageRoute extends _i11.PageRouteInfo<void> {
  const AddPersonalInfoPageRoute({List<_i11.PageRouteInfo>? children})
    : super(AddPersonalInfoPageRoute.name, initialChildren: children);

  static const String name = 'AddPersonalInfoPageRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i4.AddPersonalInfoPage();
    },
  );
}

/// generated route for
/// [_i5.CreateAccountIntroPage]
class CreateAccountIntroPageRoute extends _i11.PageRouteInfo<void> {
  const CreateAccountIntroPageRoute({List<_i11.PageRouteInfo>? children})
    : super(CreateAccountIntroPageRoute.name, initialChildren: children);

  static const String name = 'CreateAccountIntroPageRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i5.CreateAccountIntroPage();
    },
  );
}

/// generated route for
/// [_i6.CreateAccountPage]
class CreateAccountPageRoute extends _i11.PageRouteInfo<void> {
  const CreateAccountPageRoute({List<_i11.PageRouteInfo>? children})
    : super(CreateAccountPageRoute.name, initialChildren: children);

  static const String name = 'CreateAccountPageRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i6.CreateAccountPage();
    },
  );
}

/// generated route for
/// [_i7.DashboardMain]
class DashboardMainRoute extends _i11.PageRouteInfo<void> {
  const DashboardMainRoute({List<_i11.PageRouteInfo>? children})
    : super(DashboardMainRoute.name, initialChildren: children);

  static const String name = 'DashboardMainRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i7.DashboardMain();
    },
  );
}

/// generated route for
/// [_i8.IntroPage]
class IntroPageRoute extends _i11.PageRouteInfo<void> {
  const IntroPageRoute({List<_i11.PageRouteInfo>? children})
    : super(IntroPageRoute.name, initialChildren: children);

  static const String name = 'IntroPageRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i8.IntroPage();
    },
  );
}

/// generated route for
/// [_i9.OtpPage]
class OtpPageRoute extends _i11.PageRouteInfo<void> {
  const OtpPageRoute({List<_i11.PageRouteInfo>? children})
    : super(OtpPageRoute.name, initialChildren: children);

  static const String name = 'OtpPageRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i9.OtpPage();
    },
  );
}

/// generated route for
/// [_i10.SplashPage]
class SplashPageRoute extends _i11.PageRouteInfo<void> {
  const SplashPageRoute({List<_i11.PageRouteInfo>? children})
    : super(SplashPageRoute.name, initialChildren: children);

  static const String name = 'SplashPageRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i10.SplashPage();
    },
  );
}
