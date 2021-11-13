

import 'package:flutter/material.dart';
import 'package:jjsinc/model/auth_user.dart';

class AuthUsers with ChangeNotifier{

  Future<AuthUser?> getById(String authUserId){

    authUserId = "authuser";


    var realUser= AuthUserApi().getById(authUserId);

    print('talent id:$authUserId');

    return realUser;
  }



}

class AuthUserApi{
  Future<AuthUser?> getById(String talentId) async {


    // return firebaseDatabase
    //     .reference()
    //     .child("/talents/$talentId")
    //     .once()
    //     .then((snapshot) {
    //   if (snapshot.key != null && snapshot.value != null)
    //   {
    //     print(snapshot.key.toString());
    //     // print(snapshot.value);
    //     var _realTalent = Talent.fromJson(snapshot.key.toString(), snapshot.value);
    //     print(_realTalent.firstName);
    //     // if(_realTalent.studies == null || _realTalent.apprenticeships == null){
    //     //   return null;
    //     // }else
    //
    //     return _realTalent;
    //   }
    //   return null;
    // }

    // ).catchError((error) {
    //   print("Error getting talent: $talentId");
    //   print(error);
    //   return Future.error(error);
    // });
    var authUser = AuthUser.fromJson();
    return authUser;
  }
}