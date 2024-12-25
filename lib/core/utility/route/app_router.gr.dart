// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:musicana/src/modules/artist_profile/artist_profile_screen.dart'
    as _i1;
import 'package:musicana/src/modules/basic_detail/basic_detail.dart' as _i2;
import 'package:musicana/src/modules/comment/comment_screen.dart' as _i3;
import 'package:musicana/src/modules/home/home.dart' as _i4;
import 'package:musicana/src/modules/login/login.dart' as _i5;
import 'package:musicana/src/modules/phone_auth/phone_authentication_screen.dart'
    as _i7;
import 'package:musicana/src/modules/phone_auth/widget/otp_screen.dart' as _i6;
import 'package:musicana/src/modules/welcome/welcome_screen.dart' as _i8;

/// generated route for
/// [_i1.ArtistProfileScreen]
class ArtistProfileRoute extends _i9.PageRouteInfo<void> {
  const ArtistProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ArtistProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArtistProfileRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.ArtistProfileScreen();
    },
  );
}

/// generated route for
/// [_i2.BasicDetailScreen]
class BasicDetailRoute extends _i9.PageRouteInfo<void> {
  const BasicDetailRoute({List<_i9.PageRouteInfo>? children})
      : super(
          BasicDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'BasicDetailRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.BasicDetailScreen();
    },
  );
}

/// generated route for
/// [_i3.CommentScreen]
class CommentRoute extends _i9.PageRouteInfo<void> {
  const CommentRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CommentRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommentRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.CommentScreen();
    },
  );
}

/// generated route for
/// [_i4.Home]
class Home extends _i9.PageRouteInfo<void> {
  const Home({List<_i9.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.Home();
    },
  );
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.LoginScreen();
    },
  );
}

/// generated route for
/// [_i6.OtpScreen]
class OtpRoute extends _i9.PageRouteInfo<void> {
  const OtpRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.OtpScreen();
    },
  );
}

/// generated route for
/// [_i7.PhoneAuthenticationScreen]
class PhoneAuthenticationRoute extends _i9.PageRouteInfo<void> {
  const PhoneAuthenticationRoute({List<_i9.PageRouteInfo>? children})
      : super(
          PhoneAuthenticationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PhoneAuthenticationRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i7.PhoneAuthenticationScreen();
    },
  );
}

/// generated route for
/// [_i8.WelcomeScreen]
class WelcomeRoute extends _i9.PageRouteInfo<void> {
  const WelcomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i8.WelcomeScreen();
    },
  );
}
