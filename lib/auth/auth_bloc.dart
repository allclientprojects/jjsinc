import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:jjsinc/auth/auth_api.dart';
import 'package:jjsinc/model/auth_user.dart';
import 'package:jjsinc/providers/anonymous_user.dart';
import 'package:jjsinc/providers/auth_users.dart';
import 'package:jjsinc/auth/roles.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth_storage.dart';

class AuthBloc {
  final AuthUsers? authUsers;
  final AnonymousUser? anonymousUser;
  final AuthApi? authApi;
  final AuthStorage _authStorage = AuthStorage();

  AuthBloc({this.authUsers, this.anonymousUser, this.authApi});

  Role? _role;
  AuthUser? _authUser;

  StreamController<Role> _roleController = StreamController.broadcast();

  Role? get role => _role;

  Stream<Role> get roleStream => _roleController.stream;

  String? get userId => _authUser?.userId;

  Future initialize() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final userId = prefs.getString("key_userId");
    var authData = await _authStorage.getAuthUser();
    if (authData == null) {
      //If not valid authStorage is returning null
      authData = (await authApi?.refreshAuthUser());
    }

    // var authData = "nonAuthUser";

    if (authData == null) {
      _role = AnonymousRole();
    } else {
      _role = await _getRole(userId!);
    }

    print(_role);
    _roleController.add(_role!);
  }

  Future<AuthUser?> login(String email, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final userId = prefs.getString("key_userId");
    try {
      final authData = await AuthApi.login(
        email,
        password,
      );

      // _setAuthData(authData!);
      print("Step 1");
      await _authStorage.storeAuthUser(authData!);
      print("Step 2");
      _role = await _getRole(userId!);
      print("Step 3 $_role");
      _roleController.add(_role!);
      print("Step 4");
      return authData;
    } catch (e) {
      // logger.e("error in login", e);
      return Future.error(e);
      // throw e;
    }
  }

  Future<Role> _getRole(String userId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final authUserResponse = prefs.getString("key_authUserResponseString");
    var listofData = authUserFromJson(authUserResponse!);

    if (userId != null) {
      var realUser = AuthUserRole(listofData);
      return realUser;
    }

    return AnonymousRole();
  }

  void dispose() {
    _roleController.close();
  }
}
