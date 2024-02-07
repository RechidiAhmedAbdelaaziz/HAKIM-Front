import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalStorage {
  SharedPreferences sharedPreferences;
  LocalStorage(this.sharedPreferences);
}
