import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:jjsinc/providers/anonymous_user.dart';
import 'package:jjsinc/providers/auth_user.dart';
import 'package:jjsinc/view/auth/roles.dart';

import 'auth_user_role.dart';

class AuthBloc{

  final AuthUser? authUser;
  final AnonymousUser? anonymousUser;

  AuthBloc({
    this.authUser,
    this.anonymousUser
});



Role? _role;




StreamController<Role> _roleController = StreamController.broadcast();

Role? get role => _role;
Stream<Role> get roleStream => _roleController.stream;

Future initialize() async{
  var authData = "nullllll";


  if(authData == null ){
    _role = AnonymousRole();
  }else{
    _role = AuthUserRole();
  }
  _roleController.add(_role!);
}

  void dispose() {
    _roleController.close();
  }


}