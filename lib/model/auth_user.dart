

import 'package:flutter/cupertino.dart';

class AuthUser with ChangeNotifier {
  String? authToken;
  setAuthToken(String token) {
    authToken = token;
  }
  String? id;
  String? name;
  String? firstName;
  String? email;

  AuthUser({ this.id,
    this.firstName,
    this.name,
    this.email});


  factory AuthUser.fromJson() {
    try {
      return AuthUser(
          id: "123",
          firstName: "123",
          name: "123",
          email: "123",
      );
    } on Exception catch (e) {

      Future.error(e);
    }
    // return null;
    throw Exception;
    // Future.error(error)

  }
}