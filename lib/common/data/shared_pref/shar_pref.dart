import 'package:shared_preferences/shared_preferences.dart';
import 'data_keys.dart';

class AppSharedPref {
  static late SharedPreferences _prefs;

  static init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> putData(
      {required PrefKey key, required String value}) async {
    return await _prefs.setString(key.toString(), value);
  }

  static String? getData(PrefKey key) {
    return _prefs.getString(key.toString());
  }
}
