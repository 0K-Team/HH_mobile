import 'package:eco_hero_mobile/features/user/data/data_sources/preferred_topics_data_source.dart';
import 'package:eco_hero_mobile/features/user/data/models/preferred_topic.dart';
import 'package:eco_hero_mobile/features/user/domain/repositories/preferred_topics_repository.dart';
import 'package:either_dart/either.dart';

class PreferredTopicsRepositoryImpl extends PreferredTopicsRepository {
  final PreferredTopicsDataSource _source;

  PreferredTopicsRepositoryImpl(this._source);

  @override
  Future<Either<List<PreferredTopicModel>, Exception>> fetchPreferredTopics() async {
    List<PreferredTopicModel>? topics = await _source.fetchPreferredTopics();
    if (topics == null) {
      return Right(Exception('Error fetching preferred topics'));
    }

    return Left(topics);
  }

}