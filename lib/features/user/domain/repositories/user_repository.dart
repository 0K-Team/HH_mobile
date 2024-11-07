import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:either_dart/either.dart';

abstract class UserRepository {

  Future<Either<UserModel, Exception>> fetchUser(String id);

  Future<bool> updateFirstName(String firstName);

  Future<bool> updateLastName(String lastName);

  Future<bool> updateBio(String bio);

  Future<bool> updateLocation(String location);

  Future<bool> updateTitle(String title);

  Future<bool> addPreferredTopic(String topic);

  Future<bool> removePreferredTopic(String topic);



}