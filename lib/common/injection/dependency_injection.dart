import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/auth/auth_secure_storage.dart';
import 'package:eco_hero_mobile/features/blogs/data/data_sources/blog_data_source.dart';
import 'package:eco_hero_mobile/features/blogs/data/repositories/blog_repository_impl.dart';
import 'package:eco_hero_mobile/features/daily_challenge/data/data_sources/user_daily_challenge_data_source.dart';
import 'package:eco_hero_mobile/features/daily_challenge/data/repositories/user_daily_challenge_repository_impl.dart';
import 'package:eco_hero_mobile/features/discounts/data/data_sources/discounts_data_source.dart';
import 'package:eco_hero_mobile/features/discounts/data/repositories/discounts_repository_impl.dart';
import 'package:eco_hero_mobile/features/discounts/presentation/blocs/discounts_bloc.dart';
import 'package:eco_hero_mobile/features/events/data/data_sources/events_data_source.dart';
import 'package:eco_hero_mobile/features/events/data/repositories/events_repository_impl.dart';
import 'package:eco_hero_mobile/features/events/presentation/blocs/events_bloc.dart';
import 'package:eco_hero_mobile/features/friends/data/data_sources/friends_data_source.dart';
import 'package:eco_hero_mobile/features/main/navigation_page_cubit.dart';
import 'package:eco_hero_mobile/features/posts/data/data_sources/posts_data_source.dart';
import 'package:eco_hero_mobile/features/posts/data/repositories/posts_repository_impl.dart';
import 'package:eco_hero_mobile/features/posts/presentation/blocs/posts_bloc.dart';
import 'package:eco_hero_mobile/features/products/data/data_sources/products_data_source.dart';
import 'package:eco_hero_mobile/features/products/data/repositories/products_repository_impl.dart';
import 'package:eco_hero_mobile/features/products/presentation/blocs/products_bloc.dart';
import 'package:eco_hero_mobile/features/quizzes/data/data_sources/quizzes_data_source.dart';
import 'package:eco_hero_mobile/features/quizzes/data/repositories/quizzes_repository_impl.dart';
import 'package:eco_hero_mobile/features/quizzes/presentation/blocs/quizzes_bloc.dart';
import 'package:eco_hero_mobile/features/user/data/data_sources/preferred_topics_data_source.dart';
import 'package:eco_hero_mobile/features/user/data/data_sources/user_data_source.dart';
import 'package:eco_hero_mobile/features/user/data/repositories/preferred_topics_repository_impl.dart';
import 'package:eco_hero_mobile/features/user/data/repositories/user_repository_impl.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user_bloc.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/data_sources/virtual_garden_data_source.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/repositories/virtual_garden_repository_impl.dart';
import 'package:get_it/get_it.dart';

final get = GetIt.instance;

void setupDependencyInjection() {

  get.registerLazySingleton(() => AuthSecureStorage());

  get.registerFactory(() {
    Map<String, dynamic> headers = {'Content-Type': 'application/json'};

    CurrentUserBloc currentUser = get();
    if (currentUser.state is! CurrentUserLoadSuccess) {
      return Dio(
        BaseOptions(
          headers: headers,
        ),
      );
    }

    String jwt = (currentUser.state as CurrentUserLoadSuccess).jwt;
    headers['Authorization'] = 'Bearer $jwt';

    return Dio(
      BaseOptions(
        headers: headers,
      ),
    );
  });

  // Cubits
  get.registerLazySingleton(() => NavigationPageCubit());

  // Blogs
  get.registerLazySingleton(() => BlogDataSource(get()));
  get.registerLazySingleton(() => BlogRepositoryImpl(get()));

  // Daily Challenge
  get.registerLazySingleton(() => UserDailyChallengeDataSource(get()));
  get.registerLazySingleton(() => UserDailyChallengeRepositoryImpl(get()));

  // User
  get.registerLazySingleton(() => UserDataSource(get()));
  get.registerLazySingleton(() => UserRepositoryImpl(get()));
  get.registerLazySingleton(() => CurrentUserBloc());
  get.registerLazySingleton(() => PreferredTopicsDataSource(get()));
  get.registerLazySingleton(() => PreferredTopicsRepositoryImpl(get()));

  // Virtual garden
  get.registerLazySingleton(() => VirtualGardenDataSource(get()));
  get.registerLazySingleton(() => VirtualGardenRepositoryImpl(get()));

  // Posts
  get.registerLazySingleton(() => PostsDataSource(get()));
  get.registerLazySingleton(() => PostsRepositoryImpl(get()));
  get.registerLazySingleton(() => PostsBloc(get()));

  // Quizzes
  get.registerLazySingleton(() => QuizzesDataSource(get()));
  get.registerLazySingleton(() => QuizzesRepositoryImpl(get()));
  get.registerLazySingleton(() => QuizzesBloc(get()));

  // Friends
  get.registerLazySingleton(() => FriendsDataSource(get()));

  // Events
  get.registerLazySingleton(() => EventsDataSource(get()));
  get.registerLazySingleton(() => EventsRepositoryImpl(get()));
  get.registerLazySingleton(() => EventsBloc(get()));

  // Products
  get.registerLazySingleton(() => ProductsDataSource(get()));
  get.registerLazySingleton(() => ProductsRepositoryImpl(get()));
  get.registerLazySingleton(() => ProductsBloc(get()));

  // Discounts
  get.registerLazySingleton(() => DiscountsDataSource(get()));
  get.registerLazySingleton(() => DiscountsRepositoryImpl(get()));
  get.registerLazySingleton(() => DiscountsBloc(get()));
}
