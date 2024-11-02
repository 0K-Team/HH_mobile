import 'package:eco_hero_mobile/features/user/data/data_sources/user_data_source.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/domain/repositories/user_repository.dart';
import 'package:either_dart/either.dart';

class UserRepositoryImpl extends UserRepository {
  final UserDataSource _source;
  final Map<String, _CachedUser> _cache = {};

  final Duration cacheDuration = Duration(minutes: 5);

  UserRepositoryImpl(this._source);

  @override
  Future<Either<UserModel, Exception>> fetchUser(String id) async {
    final now = DateTime.now();

    if (_cache.containsKey(id)) {
      final cachedUser = _cache[id]!;
      if (now.difference(cachedUser.timestamp) < cacheDuration) {
        return Left(cachedUser.user);
      }
    }

    try {
      UserModel? user = await _source.fetchUser(id);
      if (user != null) {
        _cache[id] = _CachedUser(user: user, timestamp: now);
        return Left(user);
      } else {
        return Right(Exception('Error fetching user'));
      }
    } catch (e) {
      return Right(Exception('Error: $e'));
    }
  }

  void clearCache() {
    _cache.clear();
  }
}

class _CachedUser {
  final UserModel user;
  final DateTime timestamp;

  _CachedUser({
    required this.user,
    required this.timestamp,
  });
}
