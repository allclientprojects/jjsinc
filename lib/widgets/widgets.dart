


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jjsinc/utils/colors.dart';

class Widgets{



 static Container inputTextField({required BuildContext context, Color? bgColor, TextEditingController? controller, String? labelText}){
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width - 100,

      decoration: BoxDecoration(
        color: AppColors.yellow,
          borderRadius: BorderRadius.circular(5)
      ),
      child:  TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
          labelStyle: GoogleFonts.publicSans(
              fontSize: 12,
              fontWeight: FontWeight.w600
          )
        ),

      ),
    );
  }


 static InkWell actionButton({required BuildContext context, required void Function()? action, Color? bgColor, TextEditingController? controller, String? text}){
    return InkWell(
      onTap: action,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width - 100,
        decoration: BoxDecoration(
            color: bgColor,
          borderRadius: BorderRadius.circular(5)

        ),

        child:  Center(
          child: Text(
              text.toString(),
            textAlign: TextAlign.center,
            style: GoogleFonts.publicSans(
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
 static InkWell actionButton2({required BuildContext context, required void Function()? action, Color? bgColor, TextEditingController? controller, String? text}){
    return InkWell(
      onTap: action,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.yellow,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              color: Colors.black,
              width: 0.5
          ),
        ),
        child: Center(
          child: Text(
         text.toString(), style: GoogleFonts.publicSans(
              fontWeight: FontWeight.bold,
              fontSize: 20, color: Colors.black
          ),
          ),
        ),
      ),
    );
  }

static Container callNow(){
   return Container(
     height: 60,
     width: double.infinity,
     decoration: BoxDecoration(
         color: Colors.black
     ),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Icon(
           Icons.local_phone_outlined, color: AppColors.yellow, size: 30,

         ),
         SizedBox(width: 20,),
         Text("010 786 4970", style: GoogleFonts.publicSans(
             color: Colors.grey.shade600, fontSize: 18
         ),),
       ],
     ),
   );
}




}