import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:jjsinc/view/auth/roles.dart';

class AuthBloc{
//   AuthBloc({
// });



Role? _role;




StreamController<Role> _roleController = StreamController.broadcast();

Role? get role => _role;
Stream<Role> get roleStream => _roleController.stream;

Future initialize() async{
  var authData = null;


  if(authData.isNull){
    _role = AnonymousRole();
  }else{
    _role = _role;
  }
  _roleController.add(_role!);
}


}