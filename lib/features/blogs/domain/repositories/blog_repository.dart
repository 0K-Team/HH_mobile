import 'package:eco_hero_mobile/features/blogs/data/models/blog_model.dart';
import 'package:either_dart/either.dart';

abstract class BlogRepository {

  Future<Either<List<BlogModel>, Exception>> fetchBlogs();
}