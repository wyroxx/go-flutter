import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class PreferencesService {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> setString(String key, String value) async {
    if (_prefs == null) {
      throw Exception("SharedPreferences are not initialized");
    }
    await _prefs?.setString(key, value);
  }

  static String? getString(String key) {
    if (_prefs == null) {
      throw Exception("SharedPreferences are not initialized");
    }
    if (!_prefs!.containsKey(key)) {
      return null;
    }
    return _prefs?.getString(key);
  }

  static Future<void> setInt(String key, int value) async {
    if (_prefs == null) {
      throw Exception("SharedPreferences are not initialized");
    }
    await _prefs?.setInt(key, value);
  }

  static int? getInt(String key) {
    if (_prefs == null) {
      throw Exception("SharedPreferences are not initialized");
    }
    if (!_prefs!.containsKey(key)) {
      return null;
    }
    return _prefs?.getInt(key);
  }

  static Future<void> setBool(String key, bool value) async {
    if (_prefs == null) {
      throw Exception("SharedPreferences are not initialized");
    }
    await _prefs?.setBool(key, value);
  }

  static bool? getBool(String key) {
    if (_prefs == null) {
      throw Exception("SharedPreferences are not initialized");
    }
    if (!_prefs!.containsKey(key)) {
      return null;
    }
    return _prefs?.getBool(key);
  }

  static Future<void> setStringList(String key, List<String> value) async {
    if (_prefs == null) {
      throw Exception("SharedPreferences are not initialized");
    }
    await _prefs?.setStringList(key, value);
  }

  static List<String>? getStringList(String key) {
    if (_prefs == null) {
      throw Exception("SharedPreferences are not initialized");
    }
    if (!_prefs!.containsKey(key)) {
      return null;
    }
    return _prefs?.getStringList(key);
  }

  static Future<void> setObject(String key, Map<String, dynamic> value) async {
    if (_prefs == null) {
      throw Exception("SharedPreferences are not initialized");
    }
    String jsonString = jsonEncode(value);
    await _prefs?.setString(key, jsonString);
  }

  static Map<String, dynamic>? getObject(String key) {
    if (_prefs == null) {
      throw Exception("SharedPreferences are not initialized");
    }
    if (!_prefs!.containsKey(key)) {
      return null;
    }
    Map<String, dynamic> json = jsonDecode(_prefs!.getString(key)!);
    return json;
  }

  static Future<void> remove(String key) async {
    if (_prefs == null) {
      throw Exception("SharedPreferences are not initialized");
    }
    _prefs!.remove(key);
  }

  static Future<void> clear() async {
    if (_prefs == null) {
      throw Exception("SharedPreferences are not initialized");
    }
    _prefs!.clear();
  }

  static bool containsKey(String key) {
    if (_prefs == null) {
      throw Exception("SharedPreferences are not initialized");
    }
    if (_prefs!.containsKey(key)) {
      return true;
    }
    return false;
  }

  static Set<String> getAllKeys() {
    if (_prefs == null) {
      throw Exception("SharedPreferences are not initialized");
    }
    return _prefs!.getKeys();
  }
}
