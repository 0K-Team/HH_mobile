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
        email: 'opkarol11@wp.pl',
        notifications: [
          UserModelNotification(
            title: 'powiadomienie',
            date: 'date',
          ),
        ],
        points: 999,
        friends: [],
        avatarHash: '1',
        bio: 'Jestem bardzo fajnym ekologiem, który sprząta po swoim psie 🔥',
        achievements: [],
        skills: [],
        badges: [],
        location: 'Kraków, Poland',
        preferredTopics: [
          'Zero waste',
          'Ekologia w mieście',
          'Energia odnawialna'
        ],
        id: '',
        username: '',
        fullName: UserModelFullName(givenName: 'givenName', familyName: 'familyName'),
        provider: '',
        googleID: '',
        facebookID: '',
        title: '',
      ),
    );
  }
}
