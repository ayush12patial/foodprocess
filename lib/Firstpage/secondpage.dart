import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';



class secondpage extends StatefulWidget {
  const secondpage({super.key});


  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SafeArea(

          child: SingleChildScrollView(

            child: Container(

             color:  Color(0xffFFD7CC),

              child: Column(
               // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                    padding: EdgeInsets.only(left: 240),
                    height: 150,
                      width: 500,
                    color: Color(0xffFFD7CC),

                    child: SvgPicture.asset('assets/dipizza.svg',


                    ),
                  ),





                  Container(
                    padding: EdgeInsets.only(left: 25,right: 25),


                    height: MediaQuery.of(context).size.height,


                   decoration: BoxDecoration(
                      color: Colors.white,
                     borderRadius: BorderRadius.circular(30),



                   ),



                    child: Column(


                     mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        SizedBox(
                          height: 10,
                        ),

                        GestureDetector(

                            child: Center(child: SvgPicture.asset('assets/rectangle.svg'))),

                        SizedBox(
                          height: 20,
                        ),

                        Container(





                          child:


                          Row(

                            mainAxisAlignment: MainAxisAlignment.end,



                            children: [

                              ElevatedButton.icon(


                                label: Text('', textAlign: TextAlign.center
                                ),


                                icon: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(Icons.close,color: Colors.grey,),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '3');
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                    backgroundColor: Color(0xFFD9D9D9), foregroundColor: Colors.white),



                              ),]


                        ),
                        ),



                        Container(


                          child: Column(
                            children: [
                              Text("Get Started With Lobster",style:
                              GoogleFonts.poppins(
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                              ),
                              Row(
                                children: [


                                  Text("Don't have an account?", style:
                                  TextStyle(
                                    color: Colors.grey,
                                  ),),

                                  TextButton(onPressed: (){}, child:

                                      Text("Signup Now", style:
                                      TextStyle(
                                        color: Colors.black,
                                      ),)
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),


                        SizedBox(
                          height: 10,
                        ),



                        SizedBox(
                          height: 20,
                        ),


                        Container(
                          height: 54,
                          width: 358,

                          child: TextField(
                            decoration: InputDecoration(

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)
                              ),
                              hintText: 'Email or Phone Number',
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),



                        Container(
                          height: 54,
                          width: 358,

                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Color(0xFFD9D9D9), width: 1.0

                                ),
                              ),
                              hintText: 'Enter Password',
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        Row(


                          mainAxisAlignment:MainAxisAlignment.end,


                          children: [
                            Container(


                                child: TextButton(
                                  onPressed: (){},
                                  child: Text("Forget Paswword?",style: TextStyle(
                                      color: Colors.black
                                  ),

                                )
                                ),
                            )
                          ],
                        ),


                        SizedBox(
                          height: 20,
                        ),

                        ElevatedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '3');
                          },
                          child:  Text("Log In"),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

                              fixedSize: Size(358, 55),
                              backgroundColor: Color(0xffFE724C)
                          ) ,
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Text("Or Continue"),

                        /*FlutterSocialButton(
                        onTap: () {},
                        buttonType: ButtonType.facebook,
                        title: "Continue with Facebook",
                      ),


                      FlutterSocialButton(
                        onTap: () {},
                        buttonType: ButtonType.google,
                        title: "Continue with Google",
                      ),


                      FlutterSocialButton(
                        onTap: () {},
                        buttonType: ButtonType.apple,
                        title: "Continue with Apple",
                      ),*/
                        SizedBox(
                          height: 20,
                        ),


                        ElevatedButton(
                          onPressed: (){},

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                           SvgPicture.asset('assets/Facebook Logo.svg'),

                              SizedBox(
                                width: 9,
                              ),


                              Text("Continue with Facebook"),
                            ],
                          ),



                          style: ElevatedButton.styleFrom(




                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

                              fixedSize: Size(358, 55),
                              backgroundColor: Color(0xff1877F2)
                          ),


                        ),

                        SizedBox(
                          height: 20,
                        ),


                        ElevatedButton(
                          onPressed: (){},

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              SvgPicture.asset('assets/googi.svg'),

                              SizedBox(
                                width: 13,
                              ),

                              Text("Continue with Google",style: TextStyle(
                                color: Colors.black,
                              ),),
                            ],
                          ),



                          style: ElevatedButton.styleFrom(




                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

                              fixedSize: Size(358, 55),
                              backgroundColor: Colors.white,
                          ),


                        ),

                        SizedBox(
                          height: 20,
                        ),




                        ElevatedButton(
                          onPressed: (){},

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/appi.svg'),

                              SizedBox(
                                width: 18,
                              ),


                              Text("Continue with Apple"),
                            ],
                          ),



                          style: ElevatedButton.styleFrom(




                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

                              fixedSize: Size(358, 55),
                              backgroundColor: Color(0xff323643)
                          ),


                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
