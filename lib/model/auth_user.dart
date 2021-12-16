// To parse this JSON data, do
//
//     final authUser = authUserFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/cupertino.dart';

AuthUser authUserFromJson(String str) => AuthUser.fromJson(json.decode(str));

String authUserToJson(AuthUser data) => json.encode(data.toJson());

class AuthUser with ChangeNotifier{
  String? authToken;
  setAuthToken(String token) {
    authToken = token;
  }
  AuthUser({
    this.success,
    this.message,
    this.userId,
    this.name,
    this.email,
    this.mobile,
  });

  int? success;
  String? message;
  String? userId;
  String? name;
  String? email;
  String? mobile;



  bool get isValid => success == true;

  factory AuthUser.fromJson(Map<String, dynamic> json) => AuthUser(
    success: json["Success"],
    message: json["Message"],
    userId: json["UserID"],
    name: json["Name"],
    email: json["Email"],
    mobile: json["Mobile"],
  );

  Map<String, dynamic> toJson() => {
    "Success": success,
    "Message": message,
    "UserID": userId,
    "Name": name,
    "Email": email,
    "Mobile": mobile,
  };
}




























//
//
// import 'package:flutter/cupertino.dart';
//
// class AuthUser with ChangeNotifier {
//   String? authToken;
//   setAuthToken(String token) {
//     authToken = token;
//   }
//   String? id;
//   String? name;
//   String? firstName;
//   String? email;
//
//   AuthUser({ this.id,
//     this.firstName,
//     this.name,
//     this.email});
//
//
//   factory AuthUser.fromJson() {
//     try {
//       return AuthUser(
//           id: "123",
//           firstName: "123",
//           name: "123",
//           email: "123",
//       );
//     } on Exception catch (e) {
//
//       Future.error(e);
//     }
//     // return null;
//     throw Exception;
//     // Future.error(error)
//
//   }
// }