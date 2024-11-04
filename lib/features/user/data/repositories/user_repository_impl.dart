import 'package:eco_hero_mobile/common/injection/dependency_injection.dart';
import 'package:eco_hero_mobile/features/user/data/data_sources/user_data_source.dart';
import 'package:eco_hero_mobile/features/user/data/models/user_model.dart';
import 'package:eco_hero_mobile/features/user/domain/repositories/user_repository.dart';
import 'package:eco_hero_mobile/features/user/presentation/blocs/current_user_bloc.dart';
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

  @override
  Future<bool> addPreferredTopic(String topic) {
    // TODO: implement addPreferredTopic
    throw UnimplementedError();
  }

  @override
  Future<bool> removePreferredTopic(String topic) {
    // TODO: implement removePreferredTopic
    throw UnimplementedError();
  }

  @override
  Future<bool> updateBio(String bio) async {
    CurrentUserBloc currentUser = get();
    if (currentUser.state is! CurrentUserLoadSuccess) {
      return false;
    }

    UserModel? userModel = await _source.updateBio(bio);
    if (userModel == null) {
      return false;
    }

    currentUser.add(CurrentUserLoaded(userModel, (currentUser.state as CurrentUserLoadSuccess).jwt));
    _cache[userModel.id] = _CachedUser(user: userModel, timestamp: DateTime.now());
    return true;
  }

  @override
  Future<bool> updateFirstName(String firstName) async {
    CurrentUserBloc currentUser = get();
    if (currentUser.state is! CurrentUserLoadSuccess) {
      return false;
    }

    UserModel? userModel = await _source.updateFirstName(firstName);
    if (userModel == null) {
      return false;
    }

    currentUser.add(CurrentUserLoaded(userModel, (currentUser.state as CurrentUserLoadSuccess).jwt));
    _cache[userModel.id] = _CachedUser(user: userModel, timestamp: DateTime.now());
    return true;
  }

  @override
  Future<bool> updateLastName(String lastName) async {
    CurrentUserBloc currentUser = get();
    if (currentUser.state is! CurrentUserLoadSuccess) {
      return false;
    }

    UserModel? userModel = await _source.updateLastName(lastName);
    if (userModel == null) {
      return false;
    }

    currentUser.add(CurrentUserLoaded(userModel, (currentUser.state as CurrentUserLoadSuccess).jwt));
    _cache[userModel.id] = _CachedUser(user: userModel, timestamp: DateTime.now());
    return true;

  }

  @override
  Future<bool> updateLocation(String location) async {
    CurrentUserBloc currentUser = get();
    if (currentUser.state is! CurrentUserLoadSuccess) {
      return false;
    }

    UserModel? userModel = await _source.updateLocation(location);
    if (userModel == null) {
      return false;
    }

    currentUser.add(CurrentUserLoaded(userModel, (currentUser.state as CurrentUserLoadSuccess).jwt));
    _cache[userModel.id] = _CachedUser(user: userModel, timestamp: DateTime.now());
    return true;
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
