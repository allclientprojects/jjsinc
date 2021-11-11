


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
   static const String router = 'login-screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}





class _LoginScreenState extends State<LoginScreen> {


  @override
  void initState() {
    // TODO: implement initState

    print("This is Login Screen : login-screen");
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset("assets/images/bg-image1.jpg", height: double.infinity,width: double.infinity,fit: BoxFit.cover,),
            Positioned(
              top: 10, right: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset("assets/icons/logo1.png",width: MediaQuery.of(context).size.width/2,),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: RichText(
                        text:  TextSpan(
                          text: '',

                          // style: GoogleFonts.alfaSlabOne(),
                          children: <TextSpan>[
                            TextSpan(text: 'Specialist\n', style: GoogleFonts.alfaSlabOne(
                              textStyle: TextStyle( fontSize: 25, color: Colors.black)
                            )),
                            TextSpan(text: 'Conveyanncing &\n', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20, color: Colors.black)),
                            TextSpan(text: 'Estate Attorneys\n', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20,color: Colors.black)),

                          ],
                        ),
                      ),
                    ),

                  ],
                ),),



          ],
        )
      ),
    );
  }
}
