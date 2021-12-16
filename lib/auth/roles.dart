
import 'package:flutter/material.dart';
import 'package:jjsinc/providers/auth_users.dart';
import 'package:jjsinc/view/login/login.dart';
import 'package:jjsinc/view/registration/registration.dart';
import 'package:flutter/material.dart';
import 'package:jjsinc/model/auth_user.dart';
import 'package:jjsinc/auth/auth_bloc.dart';

import 'package:jjsinc/view/home/home.dart';
import 'package:jjsinc/view/home/track_my_transfer.dart';
import 'package:jjsinc/view/login/login.dart';
import 'package:jjsinc/view/registration/registration.dart';
import 'package:provider/provider.dart';


abstract class Role{
  Widget homeBuilder(BuildContext context);
  TransitionBuilder? navigationBuilder;
  Map<String, WidgetBuilder>? routes;
}



class AuthUserRole implements Role{

  final AuthUser authUser;
  AuthUserRole (this.authUser);

  @override
  Widget homeBuilder(BuildContext context) {
    // TODO: implement homeBuilder

    return HomeScreen();

    // throw UnimplementedError();
  }
  @override
  Map<String, WidgetBuilder>? routes = {
    HomeScreen.routerName: (_) => HomeScreen(),
    TrackMyTransfer.routerName: (_) => TrackMyTransfer(),
  };


  @override
  TransitionBuilder? navigationBuilder =
      (BuildContext context, Widget? navigator) {
    // String? token = Provider.of<AuthBloc>(context).token;
    // MyNotifications.setUpFirebaseMessaging(context);
    return ChangeNotifierProvider<AuthUser>(
      create: (ctx) =>
      (Provider.of<AuthBloc>(context).role as AuthUserRole).authUser
      ..setAuthToken("token"),
      child: navigator,
    );
  };




}


class AnonymousRole implements Role{

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
    RegistrationScreen.routerName: (_) => RegistrationScreen(),
  };

}