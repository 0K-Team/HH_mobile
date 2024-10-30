import 'package:eco_hero_mobile/features/auth/presentation/pages/auth_page.dart';
import 'package:eco_hero_mobile/features/blogs/data/models/blog_model.dart';
import 'package:eco_hero_mobile/features/blogs/presentation/pages/blog_page.dart';
import 'package:eco_hero_mobile/features/daily_challenge/data/models/user_daily_challenge_model.dart';
import 'package:eco_hero_mobile/features/daily_challenge/presentation/pages/daily_challenge_page.dart';
import 'package:eco_hero_mobile/features/main/presentation/pages/home_page.dart';
import 'package:eco_hero_mobile/features/main/presentation/pages/notifications_page.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/presentation/pages/user_configuration_page.dart';
import 'package:eco_hero_mobile/features/user/presentation/pages/user_page.dart';
import 'package:eco_hero_mobile/features/virtual_garden/presentation/pages/virtual_garden_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/auth/page',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
      routes: [
        // Users
        GoRoute(
          path: 'user/page',
          builder: (context, state) {
            assert(state.extra != null && state.extra is UserModel);
            return UserPage(user: state.extra as UserModel);
          },
          routes: [
            GoRoute(
              path: '/configuration',
              builder: (context, state) {
                assert(state.extra != null && state.extra is UserModel);
                return UserConfigurationPage(user: state.extra as UserModel);
              },
            ),
          ],
        ),
        // Notifications
        GoRoute(
          path: 'notifications/page',
          builder: (context, state) {
            assert(state.extra != null && state.extra is UserModel);
            return NotificationsPage(user: state.extra as UserModel);
          },
        ),
        // Auth
        GoRoute(
          path: 'auth/page',
          builder: (context, state) => AuthPage(),
        ),
        // Virtual garden
        GoRoute(
          path: 'virtual_garden/page',
          builder: (context, state) => VirtualGardenPage(),
        ),
        // Blogs
        GoRoute(
          path: 'blog',
          builder: (_, __) => HomePage(),
          routes: [
            GoRoute(
              path: '/page',
              builder: (_, state) {
                assert(state.extra != null && state.extra is BlogModel);
                return BlogPage(blog: state.extra as BlogModel);
              },
            ),
          ],
        ),
        // Daily challenges
        GoRoute(
          path: 'daily_challenge',
          builder: (_, __) => HomePage(),
          routes: [
            GoRoute(
              path: '/page',
              builder: (_, state) {
                assert(state.extra != null &&
                    state.extra is UserDailyChallengeModel);
                return DailyChallengePage(
                    dailyChallenge: state.extra as UserDailyChallengeModel);
              },
            )
          ],
        ),
      ],
    ),
  ],
);
