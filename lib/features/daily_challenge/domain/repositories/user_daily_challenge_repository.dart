import 'package:eco_hero_mobile/features/daily_challenge/data/models/user_daily_challenge_model.dart';
import 'package:either_dart/either.dart';

abstract class UserDailyChallengeRepository {

  Future<Either<UserDailyChallengeModel, Exception>> fetchUserDailyChallenge();
}