import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthSecureStorage {
  final FlutterSecureStorage _storage = FlutterSecureStorage();
  final String _tokenKey = 'auth_token';

  Future<void> saveToken(String token) {
    return _storage.write(key: _tokenKey, value: token);
  }

  Future<String?> getToken() {
    return _storage.read(key: _tokenKey);
  }

  Future<void> deleteToken() {
    return _storage.delete(key: _tokenKey);
  }
}