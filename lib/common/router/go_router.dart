import 'package:eco_hero_mobile/features/blogs/data/models/blog_model.dart';
import 'package:eco_hero_mobile/features/blogs/presentation/pages/blog_page.dart';
import 'package:eco_hero_mobile/features/main/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
      routes: [
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
      ],
    ),
  ],
);
