import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/blogs/data/data_sources/blog_data_source.dart';
import 'package:eco_hero_mobile/features/blogs/data/repositories/blog_repository_impl.dart';
import 'package:eco_hero_mobile/features/daily_challenge/data/data_sources/user_daily_challenge_data_source.dart';
import 'package:eco_hero_mobile/features/daily_challenge/data/repositories/user_daily_challenge_repository_impl.dart';
import 'package:eco_hero_mobile/features/main/presentation/navigation_page_cubit.dart';
import 'package:eco_hero_mobile/features/user/data/data_sources/user_data_source.dart';
import 'package:eco_hero_mobile/features/user/data/repositories/user_repository_impl.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user_bloc.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/data_sources/virtual_garden_data_source.dart';
import 'package:eco_hero_mobile/features/virtual_garden/data/repositories/virtual_garden_repository_impl.dart';
import 'package:get_it/get_it.dart';

final get = GetIt.instance;

void setupDependencyInjection() {
  get.registerLazySingleton(() => Dio());

  // Navigation
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
  get.registerLazySingleton(() => CurrentUserBloc(get()));

  // Virtual garden
  get.registerLazySingleton(() => VirtualGardenDataSource(get()));
  get.registerLazySingleton(() => VirtualGardenRepositoryImpl(get()));
}
