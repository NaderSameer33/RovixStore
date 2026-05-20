import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  SharedPref._();
  static final SharedPref _instance = SharedPref._();
  factory SharedPref() {
    return _instance;
  }

  static late SharedPreferences _sharedPreferences;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }
}
