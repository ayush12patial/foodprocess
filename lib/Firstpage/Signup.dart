import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {






  TextEditingController emailid = TextEditingController();

  var passwordid =TextEditingController();

  var confirmid = TextEditingController();

  bool obscure_text = true;



  @override
  void initState() {
    super.initState();
  }


  @override

  Widget build(BuildContext context) {


    return SafeArea(
        child: Scaffold(

          body: SingleChildScrollView(
            child: Container(
                color: Colors.white,


                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context,'2');
                        },
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color:  Color(0xFFF1F1F1),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                    ),

                    Center(child: Image.asset('assets/safeD.jpg', fit: BoxFit.cover,height: 250,)),

                    Container(


                      height: 518,

                      child: Center(
                        child: Column(

                          children: [
                            Text("Let's Get Started",style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),),
                            Text('Create an Account'),

                            SizedBox(height: 30,),

                            Container(
                              height: 55,
                              width: 350,

                              child: TextFormField(
                                controller: emailid,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    hintText: 'Enter Email Id'
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),

                            Container(
                              height: 55,
                              width: 350,

                              child: TextField(

                                controller: passwordid,
                                obscureText: obscure_text,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    hintText: 'Password',
                                  suffixIcon: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        obscure_text = !obscure_text; //change boolean value
                                      });
                                    },
                                    icon: Icon(
                                        obscure_text ?  Icons.visibility_off : Icons.visibility

                                    ),
                                  ),
                              ),
                            ),
                            ),

                            SizedBox(height: 20,),

                            Container(
                              height: 55,
                              width: 350,
                              child: TextField(
                                controller: confirmid,
                                obscureText: true,
                                decoration: InputDecoration(

                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    hintText: 'Confirm Password',
                                ),
                              ),
                            ),

                            SizedBox(height: 20,),

                            ElevatedButton(onPressed: () async{


                              validation();
                              // revise();

                             }, child: Text('Singup'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffFE724C),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                fixedSize: Size(358, 55),
                              ),

                            ),

                            Container(

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Allready have Account?"),

                                  TextButton(onPressed: (){
                                    Navigator.pop(context, '2');
                                  }, child: Text("Login", style: TextStyle(
                                    color: Color(0xffFE724C),
                                  ),))
                                ],
                              ),


                            ),

                          ],
                        ),
                      ),
                    ),

                  ],
                )

            ),
          ),
        )
    );
  }




     validation() async{

       SharedPreferences prefs =  await SharedPreferences.getInstance();
    // email validation
     if(emailid.text.isEmpty && passwordid.text.isEmpty && confirmid.text.isEmpty){

       Fluttertoast.showToast(msg: 'Dont leave the fileds empty');
       return;
     }

     else if(emailid.text.isNotEmpty){

       if(!emailid.text.contains('@'))
       {
         Fluttertoast.showToast(msg: "Email Format is wrong ");
         return;
       }
       if(!emailid.text.contains('.')){
         Fluttertoast.showToast(msg: 'Email Format is not correct');
       }
       else
         {
           if(passwordid.text.isEmpty){
             Fluttertoast.showToast(msg: 'Enter password');
             return;
           }
           else
             {
      if(passwordid.text.isNotEmpty)
      {
       if(passwordid.text.length< 8)
       {
         Fluttertoast.showToast(msg: 'password must have more than 8 digit');
         return;
       }
       else
         {
           if(confirmid.text.isEmpty){
             Fluttertoast.showToast(msg: 'confirm password must be filled');
             return;
           }
           else
             {
                if(confirmid.text.isNotEmpty){
                 if(confirmid.text != passwordid.text){
                   Fluttertoast.showToast(msg: 'confirm password must be equal to password');
                   return;
                 }
                 else
                   {
                     prefs.setString('signemail', emailid.text);
                     prefs.setString('signpassword', confirmid.text);

                     Fluttertoast.showToast(msg: "Data Saved");

                     Navigator.pushNamed(context, '3');
                   }
               }
             }
         }
             }
         }
     }
     }
  }

    // revise(){
    // if(emailid.text.isEmpty){
    //   Fluttertoast.showToast(msg: 'please fill email first');
    //   return;
    // }
    // else if(emailid.text.isNotEmpty){
    //
    //   if(!emailid.text.contains('@')){
    //     Fluttertoast.showToast(msg: 'email must contains @');
    //     return;
    //   }
    //   if(!emailid.text.contains('.')){
    //     Fluttertoast.showToast(msg: 'email must contains .');
    //     return;
    //   }
    //
    //    if(passwordid.text.isEmpty) {
    //       Fluttertoast.showToast(msg: 'password must be filled');
    //   }
    //
    //    else if(passwordid.text.length <6){
    //      Fluttertoast.showToast(msg: 'password size should be greater than 7 digit');
    //
    //
    //
    //      if(passwordid.text.contains('a')){
    //
    //        Fluttertoast.showToast(msg: 'password should be in lowercase');
    //        return;
    //      }
    //      if(confirmid != passwordid){
    //        Fluttertoast.showToast(msg: 'confirmid must be equal to passwordid');
    //      }
    //
    //    }
    //    else{
    //      Fluttertoast.showToast(msg: 'Welocome');
    //      Navigator.pushNamed(context, '3');
    //
    //    }
    //
    //
    // }
    //
    //
    //
    //    }



}














