import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Home.page),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: WelcomeRoute.page, initial: true),
        AutoRoute(page: PhoneAuthenticationRoute.page),
        AutoRoute(page: OtpRoute.page),
        AutoRoute(page: BasicDetailRoute.page),
        AutoRoute(page: ArtistProfileRoute.page),
        AutoRoute(page: CommentRoute.page),
        AutoRoute(page: BasicHome.page),
        AutoRoute(page: SearchRoute.page),
        AutoRoute(page: ChatRoute.page),
        AutoRoute(page: EventRoute.page),
        AutoRoute(page: EventDetailRoute.page),
        AutoRoute(page: SettingRoute.page),
        AutoRoute(page: EditProfile.page),
        AutoRoute(page: PlaylistRoute.page),
        AutoRoute(page: PlaylistDetailRoute.page),
        AutoRoute(page: SupportRoute.page),
        AutoRoute(page: SavedVideoRoute.page),
      ];
}
