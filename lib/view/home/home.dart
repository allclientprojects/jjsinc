





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jjsinc/utils/colors.dart';
import 'package:jjsinc/view/home/track_my_transfer.dart';
import 'package:jjsinc/widgets/widgets.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class HomeScreen extends StatefulWidget {
  static final String routerName = "home-screen";


  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


 bool inAsyncCall = false;


  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(inAsyncCall: inAsyncCall, child: Scaffold(
      body: SafeArea(
        child: Scaffold(

            body: Stack(
              children: [
                Image.asset("assets/images/bg-image2.jpg", height: double.infinity,width: double.infinity,fit: BoxFit.cover,),
                Positioned(
                  top: 10, right: 10,left: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.menu, size: 50,),
                      Image.asset("assets/icons/logo1.png",width: MediaQuery.of(context).size.width/3,),
                    ],
                  ),),
                Positioned(
                  top: 80, right: 0,left: 0,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.yellow,
                      border: Border(
                        top: BorderSide(
                          color: Colors.black,
                            width: 0.5
                        ),
                        bottom: BorderSide(
                            color: Colors.black,
                          width: 0.5
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "My Profile", style: GoogleFonts.publicSans(
                        fontWeight: FontWeight.bold,
                        fontSize: 20, color: Colors.black
                      ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 150, right: 20,left: 20,
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            RichText(
                              text:  TextSpan(
                                text: '',

                                // style: GoogleFonts.alfaSlabOne(),
                                children: <TextSpan>[
                                  TextSpan(text: 'Email: gary@redi.co.za\n', style: GoogleFonts.publicSans(
                                      textStyle: TextStyle( fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold)
                                  ),),
                                  TextSpan(text: 'Name: ', style: TextStyle( fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold)),
                                  TextSpan(text: 'Gary Mailich\n', style: TextStyle( fontSize: 18,color: Colors.black)),
                                  TextSpan(text: 'Mobile: ', style: TextStyle( fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold)),
                                  TextSpan(text: '088 555 6666\n', style: TextStyle( fontSize: 18,color: Colors.black)),


                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                     Widgets.actionButton2(context: context, action: ()
                      async{
                       // setState(() {
                       //   inAsyncCall = true;
                       // });

                       Navigator.of(context).pushNamed(TrackMyTransfer.routerName);

                     },
                     text: "Track My Transfer"),
                      SizedBox(height: 10,),
                      Widgets.actionButton2(context: context, action: (){},
                          text: "My Document Vault"),
                      SizedBox(height: 10,),
                      Widgets.actionButton2(context: context, action: (){},
                          text: "Draft A Will"),
                      SizedBox(height: 10,),
                      Widgets.actionButton2(context: context, action: (){},
                          text: "Calculators"),




                    ],
                  ),
                ),


                Positioned(
                  bottom: 50,
                  left: 0,
                  right: 0,

                  child: Widgets.callNow(),

                ),
              ],
            )
        ),
      ),
    ),);
  }
}
