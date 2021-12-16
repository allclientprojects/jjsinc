import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jjsinc/auth/auth_api.dart';
import 'package:jjsinc/auth/auth_bloc.dart';
import 'package:jjsinc/utils/colors.dart';
import 'package:jjsinc/utils/labels.dart';

import 'package:jjsinc/view/home/home.dart';
import 'package:jjsinc/widgets/widgets.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  static const String routerName = '/login-screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _form = GlobalKey<FormState>();
  final _key = GlobalKey<ScaffoldState>();
  TextEditingController? emailEditingController;
  TextEditingController? passwordEditingController;
  bool inAsyncCall = false;
  String? _email;
  String? _password;

  @override
  void initState() {
    // TODO: implement initState

    print("This is Login Screen : login-screen");
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      emailEditingController = TextEditingController();
      passwordEditingController = TextEditingController();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _form.currentState?.dispose();
    emailEditingController?.dispose();
    passwordEditingController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Labels? labels = Labels.of(context);
    return ModalProgressHUD(
      inAsyncCall: inAsyncCall,
      child: SafeArea(
        child: Scaffold(
          key: _key,
            body: Stack(
          children: [
            Image.asset(
              "assets/images/bg-image1.jpg",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/icons/logo1.png",
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: RichText(
                      text: TextSpan(
                        text: '',

                        // style: GoogleFonts.alfaSlabOne(),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Specialist\n',
                              style: GoogleFonts.alfaSlabOne(
                                  textStyle: TextStyle(
                                      fontSize: 25, color: Colors.black))),
                          TextSpan(
                              text: 'Conveyanncing &\n',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                  color: Colors.black)),
                          TextSpan(
                              text: 'Estate Attorneys\n',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: 20,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Form(
              key: _form,
              child: Positioned(
                top: 120,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Widgets.inputTextField(
                          context: context,
                          // controller: emailEditingController,
                          textInputType: TextInputType.emailAddress,
                          labelText: "Enter Your Email",
                          bgColor: Colors.yellowAccent,
                          onSaved: (val) => _email = val.trim(),
                        validator: (text) {
                          if (text!.isEmpty) {
                            return labels!.emailTextBoxEmptyError;
                          }
                          return null;
                        },

                          onChanged: (val) => _email = val,),

                    SizedBox(
                        height: 20,
                      ),
                      Widgets.inputTextField(
                        context: context,
                        // controller: passwordEditingController,
                        labelText: "Enter Your Password",
                        bgColor: Colors.yellowAccent,

                          onSaved: (val) => _password = val.trim(),

                        onChanged: (val) => _password = val,
                        validator: (text) {
                          if (text!.isEmpty) {
                            return labels!.loginScreenPasswordEmptyError;
                          } else if (text.length < 8) {
                            return labels!.loginScreenPasswordTooShortError;
                          }
                          return null;
                        },
                        // textInputType: TextInputType.visiblePassword,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Widgets.actionButton(
                          context: context,
                          action: () async {
                                  try {
                                    setState(() {
                                      inAsyncCall = true;
                                    });

                                    // if (_form.currentState!.validate()) {
                                    //   _form.currentState?.save();
                                    //   print('valid');
                                    // }


                                    await Provider.of<AuthBloc>(context,
                                            listen: false)
                                        .login(_email.toString(),
                                            _password.toString());

                                  } on HttpException catch (e) {
                                    setState(() {
                                      inAsyncCall = false;
                                    });
                                    String errorMessage =
                                        labels!.loginScreenErrorPopupText;
                                    if (e
                                        .toString()
                                        .contains('EMAIL_NOT_FOUND')) {
                                      errorMessage += labels
                                          .loginScreenErrorPopupEmailNotFoundText;
                                    } else if (e
                                        .toString()
                                        .contains('INVALID_PASSWORD')) {
                                      errorMessage += labels
                                          .loginScreenErrorPopupInvalidPassword;
                                    } else if (e
                                        .toString()
                                        .contains('USER_DISABLED')) {
                                      errorMessage += labels
                                          .loginScreenErrorPopupUserDisabledText;
                                    }

                                    Widgets.showErrorDialog(
                                        context, errorMessage);
                                    print(e);
                                  } catch (_) {
                                    setState(() {
                                      inAsyncCall = false;
                                    });
                                    print("Error from login Screen $_email $_password");
                                  }
                                  //
                                  // Navigator.of(context)
                                  //     .pushNamed(HomeScreen.routerName);
                                  setState(() {
                                    inAsyncCall = false;
                                  });
                                },
                          controller: passwordEditingController,
                          text: "Sign In",
                          bgColor: AppColors.black),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          "Forgot Password",
                          style: GoogleFonts.publicSans(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Widgets.callNow(),
            ),
          ],
        )),
      ),
    );
  }
}
