import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Home.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: WelcomeRoute.page, initial: true),
        AutoRoute(page: PhoneAuthenticationRoute.page),
      ];
}
