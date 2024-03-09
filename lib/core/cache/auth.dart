import 'package:shared_preferences/shared_preferences.dart';

class AuthCache {
  final SharedPreferences _sharedPreferences;
  AuthCache(this._sharedPreferences);

  Future<bool> cacheToken(String token) async =>
      await _sharedPreferences.setString("TOKEN", "Bearer $token");

  String? getToken() {
    return _sharedPreferences.getString("TOKEN");
  }

  Future<bool> removeToken() async => await _sharedPreferences.remove("TOKEN");
}
