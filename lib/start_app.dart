

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:jjsinc/main.dart';
import 'package:jjsinc/utils/colors.dart';
import 'package:jjsinc/view/auth/auth_bloc.dart';
import 'package:jjsinc/view/auth/roles.dart';
import 'package:provider/provider.dart';


void startApp() async{



  //required to use things like SharedPrefs before rendering first frame
  WidgetsFlutterBinding.ensureInitialized();

  AuthBloc authBloc = AuthBloc();

  await authBloc.initialize();



  runApp(
    MultiProvider(
        providers: [
          Provider(create: (BuildContext context) {  },),
          ChangeNotifierProvider(create: (_)=>Counter(),
          ),
        ],
            child: const JjsApp(),
    )
  );


}


class JjsApp extends StatelessWidget {
  const JjsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    AuthBloc authBloc = Provider.of<AuthBloc>(context);

    return MultiProvider(
        providers: [
        Provider(create: (BuildContext context) {  },),
        ChangeNotifierProvider(create: (_)=>Counter(),

        )],
      child:  StreamBuilder<Role>(
        stream: authBloc.roleStream,
        initialData: authBloc.role,
        builder: (context, snapshot){

          final Role? role = snapshot.data;
          final home = role?.homeBuilder(context);


          return GetMaterialApp(
            title: 'JjsApp',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: const Color.fromRGBO(43, 191, 202, 1.0),
              appBarTheme: AppBarTheme(
                color: Colors.white,
                iconTheme:
                IconThemeData(color: Theme.of(context).primaryColor),
                textTheme: Theme.of(context).textTheme,
              ),
              textTheme: ThemeData.light().textTheme.copyWith(
                headline1: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  color: AppColors.blue,
                ),
                subtitle1: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
                bodyText1: const TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black87,
                ),
                bodyText2: const TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.black45,
                  fontSize: 14,
                ),
              ),
              colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color.fromRGBO(255, 162, 128, 1.0)),
            ),
            home: home,
          );
        },
      ),
    );
  }
}












class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('You have pushed the button this many times:'),

            /// Extracted as a separate widget for performance optimization.
            /// As a separate widget, it will rebuild independently from [MyHomePage].
            ///
            /// This is totally optional (and rarely needed).
            /// Similarly, we could also use [Consumer] or [Selector].
            Count(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('increment_floatingActionButton'),

        /// Calls `context.read` instead of `context.watch` so that it does not rebuild
        /// when [Counter] changes.
        onPressed: () => context.read<Counter>().increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(

      /// Calls `context.watch` to make [Count] rebuild when [Counter] changes.
        '${context.watch<Counter>().count}',
        key: const Key('counterState'),
        style: Theme.of(context).textTheme.headline4);
  }
}