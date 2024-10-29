import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/daily_challenge/data/models/user_daily_challenge_model.dart';

class UserDailyChallengeDataSource {
  // ignore: unused_field
  final Dio _dio;

  UserDailyChallengeDataSource(this._dio);

  Future<UserDailyChallengeModel?> fetchUserDailyChallenge() {
    // _dio
    //fixme impl actual dio connection
    return Future.value(
      UserDailyChallengeModel(
        title: 'Dzienne wyzwanie',
        type: 'type',
        amount: 15,
        done: 7,
      ),
    );
  }
}
