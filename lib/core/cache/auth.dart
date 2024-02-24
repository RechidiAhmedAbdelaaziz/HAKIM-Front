import 'local.dart';

class AuthCache extends LocalStorage {
  AuthCache(super.sharedPreferences);

  Future<bool> cacheToken(String token) async =>
      await sharedPreferences.setString("TOKEN", token);

  String? getToken() {
    return sharedPreferences.getString("TOKEN");
  }

  Future<bool> removeToken() async => await sharedPreferences.remove("TOKEN");
}
