import 'package:dio/dio.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';

class UserDataSource {
  // ignore: unused_field fixme
  final Dio _dio;

  UserDataSource(this._dio);

  Future<UserModel?> fetchUser(String email) {
    //fixme impl
    return Future.value(
      UserModel(
        idTitle: 'Ekolog',
        email: 'opkarol11@wp.pl',
        firstName: 'Karol',
        secondName: 'Gajda',
        notifications: [
          UserModelNotifications(
            title: 'powiadomienie',
            date: 'date',
          ),
        ],
        points: 999,
        friends: [],
        avatar: '',
        bio: 'Super ekolog ze mnie jest',
        achievements: [],
        skills: [],
        badges: [],
        location: 'Kraków, Poland',
        preferredTopics: [],
      ),
    );
  }
}
