import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefSingleton {
  static late SharedPreferences _sharedPreferences;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static setBool(String key, bool value) {
    _sharedPreferences.setBool(key, value);
  }

  static getBool(String key) {
    return _sharedPreferences.getBool(key) ?? false;
  }

  static setString(String key, String value) async {
    await _sharedPreferences.setString(key, value);
  }

  static getString(String key) {
    return _sharedPreferences.getString(key) ?? "";
  }

}