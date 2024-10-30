import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:either_dart/either.dart';

abstract class UserRepository {

  Future<Either<UserModel, Exception>> fetchUser(String email);


}