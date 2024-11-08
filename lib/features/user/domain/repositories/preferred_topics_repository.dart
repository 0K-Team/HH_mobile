import 'package:eco_hero_mobile/features/user/data/models/preferred_topic.dart';
import 'package:either_dart/either.dart';

abstract class PreferredTopicsRepository {

  Future<Either<List<PreferredTopicModel>, Exception>> fetchPreferredTopics();
}