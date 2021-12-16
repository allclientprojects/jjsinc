import 'dart:convert';

import 'package:jjsinc/model/auth_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _key_auth_data = "AuthUser";


class AuthStorage {
  Future getAuthUser() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey(_key_auth_data)) {
      return null;
    }
    final json = jsonDecode(prefs.getString(_key_auth_data).toString());
    final authUser = AuthUser.fromJson(json);
    return authUser.isValid ? authUser : null;
  }

  Future<void> removeAuthUser() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(_key_auth_data);
  }

  Future<void> storeAuthUser(AuthUser authUser) async {
    String json = jsonEncode(authUser);

    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_key_auth_data, json);
  }
}