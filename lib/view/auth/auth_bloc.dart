import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:jjsinc/providers/anonymous_user.dart';
import 'package:jjsinc/providers/auth_users.dart';
import 'package:jjsinc/view/auth/roles.dart';

class AuthBloc{

  final AuthUsers? authUsers;
  final AnonymousUser? anonymousUser;

  AuthBloc({
    this.authUsers,
    this.anonymousUser
});



Role? _role;




StreamController<Role> _roleController = StreamController.broadcast();

Role? get role => _role;
Stream<Role> get roleStream => _roleController.stream;

Future initialize() async{
  var authData = "authuser";


  if(authData == "nonauthuser"){
    _role = AnonymousRole();
  }else{
    _role = await _getRole(authData);
  }
  _roleController.add(_role!);
}



  Future<Role> _getRole(String userId) async {
    // final isEmailVerified = await authApi!.isEmailVerified(userId);
    // if (!isEmailVerified) {
    //   authApi!.sendEmailVerification();
    //   return PendingEmailVerificationRole();
    // }

    // print('email verified for: $userId ');

    var user = await authUsers?.getById(userId);


    if (user?.firstName != null) {

      var realUser = AuthUserRole(user!);

      return realUser;
    }


    return AnonymousRole();
  }

  void dispose() {
    _roleController.close();
  }


}