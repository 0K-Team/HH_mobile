import 'package:eco_hero_mobile/common/app/init_page.dart';
import 'package:eco_hero_mobile/features/auth/presentation/pages/auth_page.dart';
import 'package:eco_hero_mobile/features/auth/presentation/pages/qr_auth_page.dart';
import 'package:eco_hero_mobile/features/blogs/data/models/blog_model.dart';
import 'package:eco_hero_mobile/features/blogs/presentation/pages/blog_page.dart';
import 'package:eco_hero_mobile/features/daily_challenge/data/models/user_daily_challenge_model.dart';
import 'package:eco_hero_mobile/features/daily_challenge/presentation/pages/daily_challenge_page.dart';
import 'package:eco_hero_mobile/features/eco_calculator/data/models/eco_calculator_result_model.dart';
import 'package:eco_hero_mobile/features/eco_calculator/presentation/pages/eco_calculator_page.dart';
import 'package:eco_hero_mobile/features/eco_calculator/presentation/pages/eco_calculator_result_page.dart';
import 'package:eco_hero_mobile/features/events/data/models/event_model.dart';
import 'package:eco_hero_mobile/features/events/presentation/pages/event_page.dart';
import 'package:eco_hero_mobile/features/main/presentation/pages/calculator_page.dart';
import 'package:eco_hero_mobile/features/main/presentation/pages/community_page.dart';
import 'package:eco_hero_mobile/features/main/presentation/pages/education_page.dart';
import 'package:eco_hero_mobile/features/main/presentation/pages/home_page.dart';
import 'package:eco_hero_mobile/features/main/presentation/pages/maps_page.dart';
import 'package:eco_hero_mobile/features/main/presentation/pages/notifications_page.dart';
import 'package:eco_hero_mobile/features/products/data/models/product_model.dart';
import 'package:eco_hero_mobile/features/products/presentation/pages/product_page.dart';
import 'package:eco_hero_mobile/features/quizzes/data/models/quiz_model.dart';
import 'package:eco_hero_mobile/features/quizzes/presentation/pages/quiz_page.dart';
import 'package:eco_hero_mobile/features/user/data/models/preferred_topic.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/presentation/pages/user_configuration_page.dart';
import 'package:eco_hero_mobile/features/user/presentation/pages/user_page.dart';
import 'package:eco_hero_mobile/features/user/presentation/pages/user_preferred_topics_page.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/models/virtual_garden_model.dart';
import 'package:eco_hero_mobile/features/virtual_garden/presentation/pages/virtual_garden_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/init',
  debugLogDiagnostics: kDebugMode,
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => NoTransitionPage(
        child: HomePage(),
      ),
      routes: [
        // Init
        GoRoute(
          path: 'init',
          pageBuilder: (context, state) => NoTransitionPage(
            child: InitPage(),
          ),
        ),
        // Main
        GoRoute(
          path: 'education/page',
          pageBuilder: (context, state) => NoTransitionPage(
            child: EducationPage(),
          ),
        ),
        GoRoute(
          path: 'calculator/page',
          pageBuilder: (context, state) => NoTransitionPage(
            child: CalculatorPage(),
          ),
        ),
        GoRoute(
          path: 'maps/page',
          pageBuilder: (context, state) => NoTransitionPage(
            child: MapsPage(),
          ),
        ),
        GoRoute(
          path: 'socials/page',
          pageBuilder: (context, state) => NoTransitionPage(
            child: CommunityPage(),
          ),
        ),
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
            GoRoute(
              path: '/preferred_topics/page',
              builder: (context, state) {
                assert(state.extra != null &&
                    state.extra is List<PreferredTopicModel>);
                return UserPreferredTopicsPage(
                    preferredTopics: state.extra as List<PreferredTopicModel>);
              },
            )
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
        // Event
        GoRoute(
          path: 'event/page',
          builder: (context, state) {
            assert(state.extra != null && state.extra is EventModel);
            return EventPage(event: state.extra as EventModel);
          },
        ),
        // EcoCalculator
        GoRoute(
          path: 'eco_calculator/page',
          builder: (_, __) => EcoCalculatorPage(),
        ),
        GoRoute(
          path: 'eco_calculator_result/page',
          builder: (context, state) {
            assert(
                state.extra != null && state.extra is EcoCalculatorResultModel);
            return EcoCalculatorResultPage(
                result: state.extra as EcoCalculatorResultModel);
          },
        ),
        // Products
        GoRoute(
          path: 'product/page',
          builder: (context, state) {
            assert(state.extra != null && state.extra is ProductModel);
            return ProductPage(product: state.extra as ProductModel);
          },
        ),
        // Auth
        GoRoute(
          path: 'auth/page',
          builder: (context, state) => AuthPage(),
        ),

        GoRoute(
          path: 'auth/qr/page',
          builder: (context, state) => QrAuthPage(),
        ),
        // Virtual garden
        GoRoute(
          path: 'virtual_garden/page',
          builder: (context, state) {
            assert(state.extra != null && state.extra is VirtualGardenModel);
            return VirtualGardenPage(
                virtualGarden: state.extra as VirtualGardenModel);
          },
        ),
        // Blogs
        GoRoute(
          path: 'blog/page',
          builder: (_, state) {
            assert(state.extra != null && state.extra is BlogModel);
            return BlogPage(blog: state.extra as BlogModel);
          },
        ),
        // Daily challenges
        GoRoute(
          path: 'daily_challenge/page',
          builder: (_, state) {
            assert(
                state.extra != null && state.extra is UserDailyChallengeModel);
            return DailyChallengePage(
                dailyChallenge: state.extra as UserDailyChallengeModel);
          },
        ),
        // Quizzes
        GoRoute(
          path: 'quiz/page',
          builder: (_, state) {
            assert(state.extra != null && state.extra is QuizModel);
            return QuizPage(quiz: state.extra as QuizModel);
          },
        ),
      ],
    ),
  ],
);
