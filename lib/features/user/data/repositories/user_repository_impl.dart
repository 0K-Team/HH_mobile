import 'package:eco_hero_mobile/features/user/data/data_sources/user_data_source.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/domain/repositories/user_repository.dart';
import 'package:either_dart/either.dart';

class UserRepositoryImpl extends UserRepository {
  final UserDataSource _source;

  UserRepositoryImpl(this._source);

  @override
  Future<Either<UserModel, Exception>> fetchUser(String email) async {
    UserModel? user = await _source.fetchUser(email);
    if (user == null) {
      return Right(Exception('Error fetching user'));
    }

    return Left(user);
  }
}
