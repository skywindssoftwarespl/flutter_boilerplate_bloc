import 'package:shared_preferences/shared_preferences.dart';

class SharePreference {
  static setUserId(String userId) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString('userId', userId);
  }

  static Future<String?> getUserId() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString("userId");
  }

  static clear() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }
}
