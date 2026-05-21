import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  SharedPref._();
  static final SharedPref _instance = SharedPref._();
  factory SharedPref() {
    return _instance;
  }

  late SharedPreferences _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> setString({required String key, required String value}) async {
    await _sharedPreferences.setString(key, value);
  }

  String? getString({required String key}) {
    return _sharedPreferences.getString(key) ;
  }

  Future<void> setBool({required String key, required bool value}) async {
    await _sharedPreferences.setBool(key, value);
  }

  bool? getBool({required String key}) {
    return _sharedPreferences.getBool(key);
  }

  Future<void> setInt({required String key, required int value}) async {
    await _sharedPreferences.setInt(key, value);
  }

  int ?getInt({required String key}) {
    return _sharedPreferences.getInt(key) ;
  }

  Future<void> setDouble({required String key, required double value}) async {
    await _sharedPreferences.setDouble(key, value);
  }

  double? getDouble({required String key}) {
    return _sharedPreferences.getDouble(key) ;
  }

  Future<void> removeKey({required String key}) async {
    await _sharedPreferences.remove(key);
  }

  Future<void> clearKey() async {
    await _sharedPreferences.clear();
  }
}
