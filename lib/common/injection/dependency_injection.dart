import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/blogs/data/data_sources/blog_data_source.dart';
import 'package:eco_hero_mobile/features/blogs/data/repositories/blog_repository_impl.dart';
import 'package:get_it/get_it.dart';

final get = GetIt.instance;

void setupDependencyInjection() {
  get.registerLazySingleton(() => Dio());

  // Blogs
  get.registerLazySingleton(() => BlogDataSource(get()));
  get.registerLazySingleton(() => BlogRepositoryImpl(get()));
}
