import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodorderprocess/Firstpage/secondpage.dart';
import 'package:google_fonts/google_fonts.dart';

class firstpage extends StatelessWidget {
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 SizedBox(
                   height: 60,
                 ),

                SvgPicture.asset("assets/R.svg"),

                  SizedBox(height: 70,),

                  Text("Enjoy the best restuarants or get what you need from neadby stores, delivered",
                  style: GoogleFonts.cabin(
                      fontSize: 36,
                  ),textAlign: TextAlign.center,
                ),

                SizedBox(height: 40,),


                SvgPicture.asset("assets/F.svg"),

                SizedBox(height: 40,),



                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => secondpage()),
                    );
                  },
                  child:  Text("Get Started"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    fixedSize: Size(358, 55),
                    backgroundColor: Color(0xffFE724C)
                  ) ,
                )
              ]
          )
      ),
    );
  }
}
