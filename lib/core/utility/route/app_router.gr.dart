// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:musicana/src/modules/Home/home.dart' as _i1;
import 'package:musicana/src/modules/Login/login.dart' as _i2;
import 'package:musicana/src/modules/phone_auth/phone_authentication_screen.dart'
    as _i3;
import 'package:musicana/src/modules/welcome/welcome_screen.dart' as _i4;

/// generated route for
/// [_i1.Home]
class Home extends _i5.PageRouteInfo<void> {
  const Home({List<_i5.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.Home();
    },
  );
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginScreen();
    },
  );
}

/// generated route for
/// [_i3.PhoneAuthenticationScreen]
class PhoneAuthenticationRoute extends _i5.PageRouteInfo<void> {
  const PhoneAuthenticationRoute({List<_i5.PageRouteInfo>? children})
      : super(
          PhoneAuthenticationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhoneAuthenticationRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.PhoneAuthenticationScreen();
    },
  );
}

/// generated route for
/// [_i4.WelcomeScreen]
class WelcomeRoute extends _i5.PageRouteInfo<void> {
  const WelcomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return _i4.WelcomeScreen();
    },
  );
}
