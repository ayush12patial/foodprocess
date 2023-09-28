
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foodorderprocess/Firstpage/thirdpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';



class secondpage extends StatefulWidget {
  const secondpage({super.key});


  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  var username = TextEditingController();
  var userpassword = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;




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
                    color: Color(0xffFFD7CC),
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          child: Image.asset('assets/rechangeimg.png'),
                        ),

                      ],

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


                                label: Text('', textAlign: TextAlign.center),


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

                                  TextButton(onPressed: (){
                                    Navigator.pushNamed(context, '8');
                                  }, child:

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
                            controller: username ,
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
                            controller: userpassword,
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
                          onPressed: () async{

                            SharedPreferences prefs = await SharedPreferences.getInstance();

                            var  value = prefs.getString('signemail');
                            var value2 = prefs.getString('signpassword');

                            if(username.text.isEmpty  ) {
                              Fluttertoast.showToast(
                                  msg: 'Please fill email field', backgroundColor: Colors.white,textColor: Colors.black);
                            }
                            else  if(!username.text.contains('@')){
                              Fluttertoast.showToast(msg: 'Your email format is not valid', backgroundColor: Colors.white,textColor: Colors.black);
                            }
                            else  if(!username.text.contains('.')){
                              Fluttertoast.showToast(msg: 'Your email format is not valid', backgroundColor: Colors.white,textColor: Colors.black);
                            }

                              else if(username.text != value){
                                Fluttertoast.showToast(msg: 'Your email is not sign-in', backgroundColor: Colors.white,textColor: Colors.black);
                              }

                              else if(userpassword.text.isEmpty){
                                Fluttertoast.showToast(msg: 'Please fill password field', backgroundColor: Colors.white,textColor: Colors.black);
                              }
                              else if(userpassword.text != value2){
                                Fluttertoast.showToast(msg: 'Your password is incorrect', backgroundColor: Colors.white,textColor: Colors.black);
                            }


                            else{
                              Fluttertoast.showToast(msg: 'WELCOME');

                              Navigator.pushNamed(context, '3');
                            }


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
                          onPressed: () async{

                            try {

                              print('Ankit');

                              final userCredential =  await signInWithGoogle();

                              print('Ankit'+userCredential.toString());


                              if (userCredential != null) {
                                // Sign-in with Google was successful, navigate to the next page here.
                                Navigator.pushNamed(context, '3');

                                Fluttertoast.showToast(msg: "Welcome");


                                // Ensure '3' is a valid route name.
                                Fluttertoast.showToast(msg: 'Welcome.');

                              } else {
                                // Handle the case where sign-in with Google failed.
                                // You might want to show an error message to the user.

                                Fluttertoast.showToast(msg: 'Sign-in with Google failed.');
                              }
                            } catch (e) {

                            }
//

                          },

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




Future<UserCredential> signInWithGoogle() async {
  try {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

    // Store the user's name in SharedPreferences
    await UserName(userCredential.user!.displayName);

    return userCredential;
  } catch (error) {
    print(error);
    throw error; // Handle errors as needed
  }
}

Future<void> UserName(String? name) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('name', name!); // Store the user's name
}

//navigator se data pass