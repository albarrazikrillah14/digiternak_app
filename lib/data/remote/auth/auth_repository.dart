import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  final String stateKey = 'state';
  final String tokenKey = 'user';
  final String userIdKey = 'userId';

  Future<String> isLoggedIn() async {
    final preferences = await SharedPreferences.getInstance();
    return json.decode(preferences.getString(tokenKey) ?? "");
  }

  Future<bool> logout() async {
    final preferences = await SharedPreferences.getInstance();
    await deleteToken();
    await deleteUserId();
    return preferences.setBool(stateKey, false);
  }

  Future<bool> saveToken(String token) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.setString(tokenKey, json.encode(token));
  }

  Future<bool> deleteToken() async {
    final preferences = await SharedPreferences.getInstance();
    preferences.clear();
    return preferences.remove(tokenKey);
  }

  Future<String?> getToken() async {
    final preferences = await SharedPreferences.getInstance();
    final tokenJson = preferences.getString(tokenKey) ?? "";

    if (tokenJson.isNotEmpty) {
      return json.decode(tokenJson);
    } else {
      return null;
    }
  }

  Future<bool> saveUserId(int userId) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.setInt(userIdKey, userId);
  }

  Future<bool> deleteUserId() async {
    final preferences = await SharedPreferences.getInstance();
    preferences.clear();
    return preferences.remove(userIdKey);
  }

  Future<int> getUserId() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getInt(userIdKey) ?? 0;
  }
}
