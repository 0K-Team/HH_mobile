import 'package:eco_hero_mobile/features/blogs/data/data_sources/blog_data_source.dart';
import 'package:eco_hero_mobile/features/blogs/data/models/blog_model.dart';
import 'package:eco_hero_mobile/features/blogs/domain/repositories/blog_repository.dart';
import 'package:either_dart/either.dart';

class BlogRepositoryImpl extends BlogRepository {
  final BlogDataSource _source;

  BlogRepositoryImpl(this._source);

  @override
  Future<Either<List<BlogModel>, Exception>> fetchBlogs() async {
    List<BlogModel>? blogs = await _source.fetchBlogs();
    if (blogs == null) {
      return Right(Exception('Error fetching blogs.'));
    }

    return Left(blogs);
  }
}
