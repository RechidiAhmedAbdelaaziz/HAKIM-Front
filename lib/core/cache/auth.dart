import 'local.dart';

class AuthCache extends LocalStorage {
  AuthCache(super.sharedPreferences);

  Future<bool> cacheToken(String token) async {
    return await sharedPreferences.setString("TOKEN", token);
  }

  String? getToken() {
    return sharedPreferences.getString("TOKEN");
  }
}
