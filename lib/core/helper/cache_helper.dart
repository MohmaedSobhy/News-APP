import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  //Here The Initialize of cache .
  static String appThemeKey = "apptheme";
  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  // this fun to put data in local data base using key
  static Future<bool> put({
    required String key,
    required dynamic value,
  }) async {
    if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    }
    return true;
  }

  static dynamic get({required String key}) {
    return sharedPreferences.get(key);
  }

  static Future<bool> checkIfKeyExists(String key) async {
    return sharedPreferences.containsKey(key);
  }
}
