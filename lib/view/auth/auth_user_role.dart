import 'package:flutter/material.dart';
import 'package:jjsinc/view/auth/roles.dart';
import 'package:jjsinc/view/login/login.dart';
import 'package:jjsinc/view/registration/registration.dart';


class AuthUserRole implements Role{

  @override
  Widget homeBuilder(BuildContext context) {
    // TODO: implement homeBuilder

    return LoginScreen();

    // throw UnimplementedError();
  }

  @override
  TransitionBuilder? navigationBuilder;

  @override
  Map<String, WidgetBuilder>? routes = {
    RegistrationScreen.routeName: (_) => RegistrationScreen(),
  };

}