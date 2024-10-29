import 'package:eco_hero_mobile/features/daily_challenge/data/data_sources/user_daily_challenge_data_source.dart';
import 'package:eco_hero_mobile/features/daily_challenge/data/models/user_daily_challenge_model.dart';
import 'package:eco_hero_mobile/features/daily_challenge/domain/repositories/user_daily_challenge_repository.dart';
import 'package:either_dart/either.dart';

class UserDailyChallengeRepositoryImpl extends UserDailyChallengeRepository {
  final UserDailyChallengeDataSource _source;

  UserDailyChallengeRepositoryImpl(this._source);

  @override
  Future<Either<UserDailyChallengeModel, Exception>>
      fetchUserDailyChallenge() async {
    UserDailyChallengeModel? userDailyChallenge =
        await _source.fetchUserDailyChallenge();
    if (userDailyChallenge == null) {
      return Right(Exception('Error fetching user daily challenge.'));
    }

    return Left(userDailyChallenge);
  }
}
